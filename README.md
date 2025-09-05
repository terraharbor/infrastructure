<h1 align="center" style="margin-top: 0px;">infrastructure</h1>

<p align="center">Infrastructure as Code repository for the TerraHarbor project</p>

<div align="center">

<a href="https://github.com/terraharbor/infrastructure/releases" target="_blank"><img alt="Release" src="https://img.shields.io/github/v/release/terraharbor/infrastructure?style=for-the-badge"></a>
<a href="https://github.com/terraharbor/infrastructure?tab=GPL-3.0-1-ov-file#readme" target="_blank"><img alt="License" src="https://img.shields.io/github/license/terraharbor/infrastructure?style=for-the-badge&logo=gplv3"></a>
<a href="https://github.com/terraharbor/infrastructure/actions/workflows/ansible-docker-apply.yaml" target="_blank"><img alt="Deployment" src="https://img.shields.io/github/actions/workflow/status/terraharbor/infrastructure/ansible-docker-apply.yaml?style=for-the-badge&logo=docker&label=Deployment"></a>

</div>

This repository provides the necessary configurations and scripts to deploy and manage the infrastructure components of the TerraHarbor demo instance, available [**here**](https://terraharbor.westeurope.cloudapp.azure.com).

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Overview](#overview)
  - [terraform/\*](#terraform)
  - [ansible/\*](#ansible)
  - [docker-compose/\*](#docker-compose)
    - [Running Docker Compose locally](#running-docker-compose-locally)

## Overview

The repository is organized in the following structure:

### terraform/*

[This folder](./terraform/) contains the **Terraform code for creating the cloud infrastructure on Azure, where we deploy our TerraHarbor demo instance**.

> [!NOTE]
> This Terraform code can be run locally, using the Terraform CLI, but it is usually applied with [the GitHub Actions workflows in this repository](./.github/workflows).

In summary, this code does the following:

- Creates a new resource group in Azure.
- Creates a new virtual network and private subnet, along with a static public IP that allows access to the demo instance.
- Creates a new network security group allowing access to SSH, HTTP, and HTTPS, and network interface attached to it.
- Creates a new Ubuntu virtual machine in the specified subnet, attached to said network interface and public IP. This virtual machine is configured to be accessed via SSH using a public key.

> [!IMPORTANT]
> The Azure resources are deployed in the Azure for Students subscription of the user [@lentidas](https://github.com/lentidas).
> 
> Authentication against the Azure API is done using a Service Principal with the necessary permissions. Its credentials are stocked as GitHub Secrets on this repository.

### ansible/*

[This folder](./ansible/) contains the Ansible playbooks and roles for **configuring the VM and deploying the application using Docker Compose**.

The [`azure_vms_config.yaml`](./ansible/azure_vms_config.yaml) playbook is used to **configure the VM created by Terraform**. It updates the machine, installs Docker, Docker Compose, and any other necessary dependencies. 

> [!NOTE]
> The `azure_vms_config.yaml` playbook is called automatically by the respective GitHub Actions workflows whenever a Terraform applied is performed. It can also be triggered manually in the *Actions* tab.

The [`docker_apply.yaml`](./ansible/docker_apply.yaml) playbook is used to **deploy the application services defined in the Docker Compose files**. It clones the necessary repositories to get the Docker Compose files and scripts, then runs them inside the VM.

> [!NOTE]
> The `docker_apply.yaml` playbook is called automatically by the respective GitHub Actions workflow whenever a change in the [`docker-compose.yaml`](./docker-compose/docker-compose.yaml) file is detected or when a new release of the [terraharbor/backend](https://github.com/terraharbor/backend) or [terraharbor/frontend](https://github.com/terraharbor/frontend) repositories is published. It can also be triggered manually in the *Actions* tab.

<!-- TODO Add instructions to run Ansible locally -->

### docker-compose/*

[This folder](./docker-compose/) contains the Docker Compose files for **deploying the application along with its dependencies**:

- [`docker-compose.yaml`](./docker-compose/docker-compose.yaml): the canonical Docker Compose file used to deploy our demonstration instance:
  - Defines an internal network shared between all the services and the required volumes (for the SQL database data, the Terraform state files and the Let's Encrypt certificates).
  - Deploys a PostgreSQL database, an instance of the backend container, an instance of the frontend container, and a reverse proxy (Traefik) to manage the incoming traffic and provide SSL termination.
  - The traffic directed to the `/state` endpoint is routed directly to the backend container, because it is the endpoint that the Terraform client directly talks to.
- [`docker-compose-local.yaml`](./docker-compose/docker-compose-local.yaml): a Docker Compose file used for local development and testing; it is similar to the canonical file except for a few differences:
  - Instead of downloading the prebuilt images of the backend and frontend containers, it builds them from the local Dockerfiles.
  - There is no SSL termination on the reverse proxy.
  - The PostgreSQL database, the backend container, and Traefik all have their local ports exposed to the host for debugging and testing purposes.

#### Running Docker Compose locally

> [!NOTE]
> This section is aimed at contributors who want to run Docker Compose locally for development and testing purposes.

1. First, ensure you have Docker and Docker Compose installed on your machine.
2. Clone the project repositories into you machine (at a minimum [terraharbor/backend](https://github.com/terraharbor/backend), [terraharbor/frontend](https://github.com/terraharbor/frontend) and [terraharbor/infrastructure](https://github.com/terraharbor/infrastructure)). You should find yourself with a folder tree similar to the following (**this is important, because the `docker-compose-local.yaml` file uses relative paths**):
    ```
    .
    ├── backend
    |   ├── ...
    |   └── Dockerfile
    ├── frontend
    |   ├── ...
    |   └── Dockerfile
    └── infrastructure
        ├── ...
        └── docker-compose
    ```
3. Get into the `infrastructure/docker-compose` folder.
4. Create a `.env.local` file with the following content (adjust the passwords as needed):
    ```
    PG_ROOT_PASSWORD=rootpass
    TERRAHARBOR_DB_PASSWORD=terraharborpass
    ```
5. Then start the services using Docker Compose:
    ```bash
    # Start the services attached to the logs.
    docker compose --file docker-compose-local.yaml --env-file .env --env-file .env.local up --build

    # Alternatively, add the detached flag `-d` to run in background.
    docker compose --file docker-compose-local.yaml --env-file .env --env-file .env.local up --build -d

    # View the logs of the running services.
    docker compose --file docker-compose-local.yaml --env-file .env --env-file .env.local logs -f
    ```
> [!IMPORTANT]
> The `--build` flag ensures that the Docker images are rebuilt from the local Dockerfiles on every run, rather than using any cached images.

6. When done testing, you can destroy the containers and networks created by Docker Compose:
    ```bash
    docker compose --file docker-compose-local.yaml --env-file .env --env-file .env.local down
    ```
> [!TIP]
> If you desire a truly clean environment, you can remove the persistent volumes when bringing down the containers:
> ```bash
> docker compose --file docker-compose-local.yaml --env-file .env --env-file .env.local down --volumes
> ```
> Be warned that any users/projects/tokens on the SQL database will be lost, as with any Terraform state files.

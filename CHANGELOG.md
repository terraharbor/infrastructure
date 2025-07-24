# Changelog

## 1.0.0 (2025-07-24)


### Features

* add Ansible code to first configure the machine ([55c82da](https://github.com/terraharbor/infrastructure/commit/55c82dac79400a6085a1d8901ca4a2cb6b0490fd))
* add code to create Azure VM to host application ([e11ca22](https://github.com/terraharbor/infrastructure/commit/e11ca22a4847f53e84e5651089bab6c2b9d97c24))
* add Docker Compose and related automation ([4a8f1a0](https://github.com/terraharbor/infrastructure/commit/4a8f1a096ca15b7b6494af7d5cb276d47fd9e2b8))
* add Terraform code to create Azure VM to host application ([a771404](https://github.com/terraharbor/infrastructure/commit/a771404a9dd6b4f4f33246f1b6d404a484dff2bb))
* install required packages for before installing Docker and others ([ae602b0](https://github.com/terraharbor/infrastructure/commit/ae602b0d2cafdaad9f715987dd191cd8389d05ce))


### Bug Fixes

* replace DNS prefix with an eventual suffix ([77252a8](https://github.com/terraharbor/infrastructure/commit/77252a8a326271de17027f6f9f079be611c6eb48))


### Miscellaneous Chores

* add/edit .renovaterc.json ([8711b46](https://github.com/terraharbor/infrastructure/commit/8711b46798ae4e574235dee94068b8f7c52a144a))
* add/edit CODEOWNERS ([283f31c](https://github.com/terraharbor/infrastructure/commit/283f31cec32ef84eeb0a6b546230cff38332be61))
* add/edit LICENSE.txt ([8e59c8b](https://github.com/terraharbor/infrastructure/commit/8e59c8b39739c7d975ac801c98adc8be499ffa4d))
* add/edit release-please-config.json ([5f9f210](https://github.com/terraharbor/infrastructure/commit/5f9f2101ce863c8cafdf4f4c2f78ca1728dc141f))
* add/edit release-please-manifest.json ([69c8f6a](https://github.com/terraharbor/infrastructure/commit/69c8f6a9fcdf074e61305065f8b504087011ec7d))
* merge pull request [#5](https://github.com/terraharbor/infrastructure/issues/5) from terraharbor/feat/create-infrastructure ([e11ca22](https://github.com/terraharbor/infrastructure/commit/e11ca22a4847f53e84e5651089bab6c2b9d97c24))
* merge pull request [#7](https://github.com/terraharbor/infrastructure/issues/7) from terraharbor/ci/fix-plan-artifact ([7677181](https://github.com/terraharbor/infrastructure/commit/7677181496329354389f8bb0f980676c4781b073))
* remove secrets ([696d70f](https://github.com/terraharbor/infrastructure/commit/696d70f526d8d764474d9e03831cfc01a13d8a31))


### Code Refactoring

* format Terraform tfvars file ([fffffc1](https://github.com/terraharbor/infrastructure/commit/fffffc14696e334c81c23b6094cb1fa7afeee33d))
* run `terraform fmt` ([c405ace](https://github.com/terraharbor/infrastructure/commit/c405acee38b9c59f27199ab506be6c3b27b9a580))


### Continuous Integration

* add a way to run the Terraform apply manually if necessary ([cfc9c35](https://github.com/terraharbor/infrastructure/commit/cfc9c359a54a61f14d187388e5d6b7618a34893e))
* add login step ([dd935d3](https://github.com/terraharbor/infrastructure/commit/dd935d352b5ed8c91aeaa58d4a60e2b31395e5a2))
* add Terraform workflows ([c3e769e](https://github.com/terraharbor/infrastructure/commit/c3e769e6622444e01c913f52ea32d0714c34b972))
* add workflow and trigger to run Ansible for configuring VM ([d43fade](https://github.com/terraharbor/infrastructure/commit/d43fade2619aa9c75bbe761d246c94010a95be55))
* add workflow to eventually destroy everything ([4dfd134](https://github.com/terraharbor/infrastructure/commit/4dfd134a987be297db494c03ff69eafff4feb562))
* add/edit commits-checks.yaml ([db6dd94](https://github.com/terraharbor/infrastructure/commit/db6dd941451a7647587dff0c2a2ebe077b58fbdc))
* add/edit commits-checks.yaml ([37a4e12](https://github.com/terraharbor/infrastructure/commit/37a4e12e3cedcb262a70bcf7dbf8bab66d25e6c7))
* add/edit commits-checks.yaml ([4a13c2b](https://github.com/terraharbor/infrastructure/commit/4a13c2b303b00991413aff44a678970db2e26437))
* add/edit pr-issues-project.yaml ([b593352](https://github.com/terraharbor/infrastructure/commit/b593352bc9bafa8e3e0d243a9b1bf7c22a50dd2a))
* add/edit pr-issues-project.yaml ([5e34cce](https://github.com/terraharbor/infrastructure/commit/5e34cce6562fa3cf356dd695e6575c6497c40ade))
* add/edit pr-issues-project.yaml ([d36aed7](https://github.com/terraharbor/infrastructure/commit/d36aed79bd7ad0efd2854c5cabb7602964c14a34))
* add/edit release-please.yaml ([ce15015](https://github.com/terraharbor/infrastructure/commit/ce150150362bcb5a07b0140fb7245b8557887dd1))
* add/edit release-please.yaml ([7bf4d1b](https://github.com/terraharbor/infrastructure/commit/7bf4d1b7d612b44f35227f1581b2f2e29445c5c4))
* add/edit release-please.yaml ([7a371b2](https://github.com/terraharbor/infrastructure/commit/7a371b2a2666fce2520acaec03294c425cc325c1))
* change repository dispatch event for clarity ([272f62f](https://github.com/terraharbor/infrastructure/commit/272f62fce94344cbac08ac456ff0afdda1853f28))
* fix artifact path for the plan result ([7677181](https://github.com/terraharbor/infrastructure/commit/7677181496329354389f8bb0f980676c4781b073))
* fix artifact path for the plan result ([941f99f](https://github.com/terraharbor/infrastructure/commit/941f99f9801b24e5bffeb56e72bfcdb0bb6f16f4))
* fix error with the vault secret ([b58fa50](https://github.com/terraharbor/infrastructure/commit/b58fa50ad9f487c47ee4f859f9c1f6d38d4e3cc3))
* fix output comment when plan is bigger than supported ([8ca4102](https://github.com/terraharbor/infrastructure/commit/8ca41023824ed7105a6bcd7e478f6892116927b4))
* fix same artifact issue in the download step ([7c515e8](https://github.com/terraharbor/infrastructure/commit/7c515e87096577af044bbdddcbc061c7498ccf42))
* fix secret path ([2fd3446](https://github.com/terraharbor/infrastructure/commit/2fd34463e3ffd42761056e4b040480262284ea34))
* fix token to dispatch Ansible ([acb7005](https://github.com/terraharbor/infrastructure/commit/acb7005cbae5c6360a100cf252eb568e15a3687d))
* set the working directory on the plan/apply workflow ([7ab2eec](https://github.com/terraharbor/infrastructure/commit/7ab2eece01b2219a70a7a128b83da21ad00f21dc))
* try another method of reading the latest tags ([aa3ba3a](https://github.com/terraharbor/infrastructure/commit/aa3ba3ac4aa84756ef702148c4095c7201e61196))

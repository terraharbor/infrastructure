# Changelog

## 1.0.0 (2025-09-05)


### Features

* add Ansible code to first configure the machine ([55c82da](https://github.com/terraharbor/infrastructure/commit/55c82dac79400a6085a1d8901ca4a2cb6b0490fd))
* add code to create Azure VM to host application ([e11ca22](https://github.com/terraharbor/infrastructure/commit/e11ca22a4847f53e84e5651089bab6c2b9d97c24))
* add Docker Compose and related automation ([4a8f1a0](https://github.com/terraharbor/infrastructure/commit/4a8f1a096ca15b7b6494af7d5cb276d47fd9e2b8))
* add global redirection from HTTP to HTTPS on production site ([12321f3](https://github.com/terraharbor/infrastructure/commit/12321f38a14b675aedfe210b4e50154cd02d9486))
* add healthchecks and put backend behind proxy ([1c56e3a](https://github.com/terraharbor/infrastructure/commit/1c56e3a9906cc65c4ab8344e74df5558b91ee8ee))
* add remaining SSH keys ([5fd8c42](https://github.com/terraharbor/infrastructure/commit/5fd8c42425be2324760642d42da272009ed2437c))
* add Terraform code to create Azure VM to host application ([a771404](https://github.com/terraharbor/infrastructure/commit/a771404a9dd6b4f4f33246f1b6d404a484dff2bb))
* install required packages for before installing Docker and others ([ae602b0](https://github.com/terraharbor/infrastructure/commit/ae602b0d2cafdaad9f715987dd191cd8389d05ce))
* make the necessary modifications for new PostgreSQL deployment ([0d1eab5](https://github.com/terraharbor/infrastructure/commit/0d1eab51d796a7ae1fad8c85fde5241778f6377c))
* put backend behind proxy and add HTTP-&gt;HTTPS redirection ([fdb18b1](https://github.com/terraharbor/infrastructure/commit/fdb18b1e43bf598aeef1ade370e8b16cd8d5df3d))
* start adding the volume for storing the Terraform states ([fb56ea3](https://github.com/terraharbor/infrastructure/commit/fb56ea34aa95cc1ac70fa838efeb9bff2fc6fc91))


### Bug Fixes

* add platform to the docker-compose.yaml ([5ef83b6](https://github.com/terraharbor/infrastructure/commit/5ef83b64f62788aabad4b447d419f9a22483f550))
* enable remote_src ([5d3a7fa](https://github.com/terraharbor/infrastructure/commit/5d3a7fab14405676fbc7d1355b0ca13594e6a665))
* fix HTTP-&gt;HTTPS redirection ([723f9f8](https://github.com/terraharbor/infrastructure/commit/723f9f83dd607060c32e7f34360cca61a614ccff))
* pin full container versions because we are using Renovate ([0e747fe](https://github.com/terraharbor/infrastructure/commit/0e747fec1b992fad0453ae6de127ca3f52aabee8))
* replace DNS prefix with an eventual suffix ([77252a8](https://github.com/terraharbor/infrastructure/commit/77252a8a326271de17027f6f9f079be611c6eb48))
* use env variables to set container versions ([acb3260](https://github.com/terraharbor/infrastructure/commit/acb326038030b5fda3bc90fb4994c574b9abd9f2))
* use official PostgreSQL image instead of bitnami one ([7361907](https://github.com/terraharbor/infrastructure/commit/736190774dc7d1371988cf7a2ede920d198490c4))
* use official PostgreSQL image instead of bitnami one ([a777688](https://github.com/terraharbor/infrastructure/commit/a777688f45e7eccaef0811792cd696011c73f807))


### Documentation

* add badges to the README.md ([9c1b998](https://github.com/terraharbor/infrastructure/commit/9c1b99825018f9a3975ac9276b3d345a77c1c734))
* add first version of better README.md ([9fa2eee](https://github.com/terraharbor/infrastructure/commit/9fa2eeec42d45d3cefa7f0530caba69da222683f))
* add first version of better README.md ([c4975c0](https://github.com/terraharbor/infrastructure/commit/c4975c09d092005e4b7ea0251385134e95fd54f9))
* add link to demo instance ([078b280](https://github.com/terraharbor/infrastructure/commit/078b280e40a5a2b9c3daca9f421de6a50d910ee0))
* **readme:** refactor badge links in README.md ([8a609c4](https://github.com/terraharbor/infrastructure/commit/8a609c4bc0f5cdd75262e324fbb970d4662ee670))
* **readme:** update badge ([1ab9d79](https://github.com/terraharbor/infrastructure/commit/1ab9d79032f285eb1272b1f9215289f76b95a269))
* small updates on the README ([c31b227](https://github.com/terraharbor/infrastructure/commit/c31b2277edeecac5e9d0096035d387803dcc3d1c))


### Miscellaneous Chores

* add/edit .renovaterc.json ([8711b46](https://github.com/terraharbor/infrastructure/commit/8711b46798ae4e574235dee94068b8f7c52a144a))
* add/edit CODEOWNERS ([283f31c](https://github.com/terraharbor/infrastructure/commit/283f31cec32ef84eeb0a6b546230cff38332be61))
* add/edit LICENSE.txt ([8e59c8b](https://github.com/terraharbor/infrastructure/commit/8e59c8b39739c7d975ac801c98adc8be499ffa4d))
* add/edit release-please-config.json ([5f9f210](https://github.com/terraharbor/infrastructure/commit/5f9f2101ce863c8cafdf4f4c2f78ca1728dc141f))
* add/edit release-please-manifest.json ([69c8f6a](https://github.com/terraharbor/infrastructure/commit/69c8f6a9fcdf074e61305065f8b504087011ec7d))
* **deps:** pin dependencies ([#9](https://github.com/terraharbor/infrastructure/issues/9)) ([9c908b6](https://github.com/terraharbor/infrastructure/commit/9c908b6476cd3c900071e6ae0adad303dea80a1d))
* **deps:** update actions/checkout action to v5 ([#15](https://github.com/terraharbor/infrastructure/issues/15)) ([a05f4bc](https://github.com/terraharbor/infrastructure/commit/a05f4bc30a0b4fbb1944fc57001a93339aa2ec48))
* **deps:** update actions/create-github-app-token action to v2.1.1 ([#14](https://github.com/terraharbor/infrastructure/issues/14)) ([2412712](https://github.com/terraharbor/infrastructure/commit/2412712cfd304bf2e0bdd50cd5c3bfc9b4075197))
* **deps:** update actions/download-artifact action to v5 ([#13](https://github.com/terraharbor/infrastructure/issues/13)) ([612de5b](https://github.com/terraharbor/infrastructure/commit/612de5bc3e0b5c9d589d96b73fb3910e731657fd))
* **deps:** update actions/github-script action to v8 ([#25](https://github.com/terraharbor/infrastructure/issues/25)) ([d7ec403](https://github.com/terraharbor/infrastructure/commit/d7ec40359d40238eaff2fec8c2ea7e2f67285d7f))
* **deps:** update actions/setup-python action to v5 ([#8](https://github.com/terraharbor/infrastructure/issues/8)) [skip ci] ([e016bc1](https://github.com/terraharbor/infrastructure/commit/e016bc1e61beaffef2df5efbab8fe3d368643500))
* **deps:** update actions/setup-python action to v6 ([#21](https://github.com/terraharbor/infrastructure/issues/21)) ([95ec7f4](https://github.com/terraharbor/infrastructure/commit/95ec7f40a1322846d538ef181e0613af9c39ca5a))
* merge pull request [#10](https://github.com/terraharbor/infrastructure/issues/10) from terraharbor/ci/terraform ([49a359f](https://github.com/terraharbor/infrastructure/commit/49a359f2d15a9ad3bf9cfc784e609110070034e6))
* merge pull request [#18](https://github.com/terraharbor/infrastructure/issues/18) from terraharbor/fix/migrate-from-bitnami ([7361907](https://github.com/terraharbor/infrastructure/commit/736190774dc7d1371988cf7a2ede920d198490c4))
* merge pull request [#19](https://github.com/terraharbor/infrastructure/issues/19) from terraharbor/fixes-and-improvements ([ce965a9](https://github.com/terraharbor/infrastructure/commit/ce965a999693870cd4fde6a3c070c9b43ffb7bbb))
* merge pull request [#24](https://github.com/terraharbor/infrastructure/issues/24) from terraharbor/docs/README ([9fa2eee](https://github.com/terraharbor/infrastructure/commit/9fa2eeec42d45d3cefa7f0530caba69da222683f))
* merge pull request [#5](https://github.com/terraharbor/infrastructure/issues/5) from terraharbor/feat/create-infrastructure ([e11ca22](https://github.com/terraharbor/infrastructure/commit/e11ca22a4847f53e84e5651089bab6c2b9d97c24))
* merge pull request [#7](https://github.com/terraharbor/infrastructure/issues/7) from terraharbor/ci/fix-plan-artifact ([7677181](https://github.com/terraharbor/infrastructure/commit/7677181496329354389f8bb0f980676c4781b073))
* remove secrets ([696d70f](https://github.com/terraharbor/infrastructure/commit/696d70f526d8d764474d9e03831cfc01a13d8a31))
* update default container versions ([75de7a0](https://github.com/terraharbor/infrastructure/commit/75de7a01e33edfd2076c91852de3f0d059dfee83))
* updated .gitignore ([0a94fac](https://github.com/terraharbor/infrastructure/commit/0a94fac447e0e95d9a30cc840ea34d3be534f420))


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
* only run Terraform pipelines if touching the respective folder ([49a359f](https://github.com/terraharbor/infrastructure/commit/49a359f2d15a9ad3bf9cfc784e609110070034e6))
* only run Terraform pipelines if touching the respective folder ([3482ba1](https://github.com/terraharbor/infrastructure/commit/3482ba103b7760d84a8c73a5b68d21921e956d8d))
* run ansible-docker-apply workflow on push to main ([#23](https://github.com/terraharbor/infrastructure/issues/23)) ([57150be](https://github.com/terraharbor/infrastructure/commit/57150be11c926ea62ae342217ff830e9e4db28bc))
* set the working directory on the plan/apply workflow ([7ab2eec](https://github.com/terraharbor/infrastructure/commit/7ab2eece01b2219a70a7a128b83da21ad00f21dc))
* try another method of reading the latest tags ([aa3ba3a](https://github.com/terraharbor/infrastructure/commit/aa3ba3ac4aa84756ef702148c4095c7201e61196))

<h3 align="center">labthyl_backend_lock_setup</h3>

<div align="center">
<br> 

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This project create a backend structure to be use on Terraform projects on AWS Environments.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

This project will create a S3 bucket and a DynamoDB Table to be used as a Terraform Backend configuration for your projects.

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you all the information to reproduce this project on your environemtn.

### Prerequisites

What things you need to install the software and how to install them:
* terraform 1.0.7
* AWS Account and user with this previlegies.


### Installing

#### Terraform

```
https://www.terraform.io/downloads.html
```

#### AWS Account
```
https://portal.aws.amazon.com/billing/signup#/start
```

## 🔧 Running the project <a name = "running"></a>

1. Clone this repo into a local folder.
```
gh repo clone thieslei/labthyl_backend_lock_setup
```

2. Update the S3 name and DynamoDB table name as you want. 

3. In your local folder run the Terraform commands:
```
terraform init
terraform plan
terraform apply
```

4. Check it out in your AWS Account if the resources was created.

## 🎈 Usage <a name="usage"></a>

On your Terraform project use this configuration on your backend block.

```
terraform {
  backend "s3" {
    bucket         = "name-terraform-state-bucket"
    key            = "name/terraform.tfstate"
    region         = "regionaws"
    dynamodb_table = "name-terraform-state-table"
  }
}
```

## ⛏️ Built Using <a name = "built_using"></a>

- [Terraform](https://www.terraform.io/) - Terraform
- [Terraform Backend](https://www.terraform.io/docs/language/settings/backends/s3.html) - Terraform Backend
- [Terraform Backend Lock](https://www.terraform.io/docs/language/state/locking.html) - Terraform Backend
- [DynamoDB](https://aws.amazon.com/dynamodb) - DynamoDB
- [AWS](https://aws.amazon.com/) - AWS
- [S3 Bucket](https://aws.amazon.com/s3/) - S3 Buckets

## ✍️ Authors <a name = "authors"></a>

- [@thieslei](https://github.com/thieslei) - Thieslei Oliveira
- :envelope_with_arrow:	- thieslei@gmail.com

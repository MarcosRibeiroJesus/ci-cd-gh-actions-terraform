terraform {
  required_version = "1.1.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.2"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "Terraform GitHub Actions setup"
      CreatedAt = "4/18/2022"
      ManagedBy = "Terraform"
      Owner     = "Marcos Ribeiro"
    }
  }
}

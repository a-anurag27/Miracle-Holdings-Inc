terraform {

  backend "s3" {
    bucket               = "miracleholdings-inc-anurag"
    workspace_key_prefix = "terraform-states/cost-insight"
    key                  = "terraform.tfstate"
    region               = "us-west-1"
  }
  required_providers {
    aws = {
      version = ">= 5.39.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

variable "instance_types" {
  description = "A map of AWS instance types by environment"
  type        = map(string)
  default = {
    dev     = "t2.micro"
    staging = "t2.small"
    prod    = "t2.medium"
  }
}

module "shared_module_consumer" {
  source           = "../Shared-Module"
  workspace_name   = terraform.workspace
  application_name = "cost-insight"
}

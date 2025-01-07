terraform {
  backend "s3" {
    bucket = "miracleholdings-inc-anurag"
    key    = "terraform-states/invest-track/institutional-track/terraform.tfstate"
    region = "us-west-1"
  }
  required_providers {
    aws = {
      version = ">= 5.39.0"
      source  = "hashicorp/aws"
    }
  }
}

variable "status" {
  description = "status of the IAM role"
  type        = string
  default     = "online"
}

provider "aws" {
  region = "us-west-2"
}
resource "aws_iam_role" "very-secure-role-institutional" {
  name = "very-secure-role-institutional"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  tags = {
    createdBy     = "terraform"
    terraformTime = "${timestamp()}"
    CanDelete     = "true"
    product       = "credit-boost"
  }
}
terraform {

  required_providers {
    aws = {
      version = ">= 5.39.0"
      source  = "hashicorp/aws"
    }
  }
  cloud {
    organization = "AnuragInit"
    hostname     = "app.terraform.io"
    workspaces {
      project = "invest_track_institutional_track"
      name    = "invest_track_institutional_track_default"
    }
  }
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

# PROVIDER
terraform {

  required_version = "~> 1.5.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "app-notifier-tf"
    key            = "terraform.tfnotifier"
    dynamodb_table = "app-notifier-tf"
    region         = "us-east-1"
  }

}



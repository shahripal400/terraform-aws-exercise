terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      
    }
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-north-1"
}


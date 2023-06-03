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
  access_key = "AKIA2233YL3XDICYLMR2"
  secret_key = "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"
  region     = "eu-north-1"
}


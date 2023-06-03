# remote_state {
#   backend = "s3"
#   config = {
#     bucket = "practical-terraform-state-bucket"
#     key    = "dev/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

provider "aws" {
  access_key = "AKIA2233YL3XDICYLMR2"
  secret_key = "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"
  region     = "eu-north-1"
}
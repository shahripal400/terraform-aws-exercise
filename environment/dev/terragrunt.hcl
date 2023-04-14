remote_state {
  backend = "s3"
  config = {
    bucket = "practical-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

include {
  path = "../modules/ec2-instancew"
}

include { 
    path = "../modlules/s3"
}
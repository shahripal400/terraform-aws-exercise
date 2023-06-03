terraform {
  source = "../../..//modules/ec2-instancew"
}

# remote_state {
#   backend = "s3"
#   config = {
#     bucket = "practical-terraform-state-bucket"
#     key    = "dev/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

inputs = {
  ami_id = "ami-064087b8d355e9051"
  instance_type = "t2.micro"
  key_name = "test"
  subnet_id = ""
  security_group_id  = "module.ec2_instancew.security_group_id"
}
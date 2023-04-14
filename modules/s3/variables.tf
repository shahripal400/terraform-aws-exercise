variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the EC2 key pair to use for SSH access"
  type        = string
}

variable "name" {
  description = "The name tag to apply to the EC2 instance"
  type        = string
}

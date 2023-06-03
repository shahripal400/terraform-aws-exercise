variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet in which to launch the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair to associate with the instance"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
    type = string
    description = "(optional) describe your variable"
}
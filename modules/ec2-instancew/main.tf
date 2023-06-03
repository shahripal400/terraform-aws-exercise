resource "aws_instance" "practical" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring             = true
  subnet_id     = var.subnet_id
  root_block_device {
    encrypted = true
  }
  ebs_block_device {
  device_name = "/dev/xvdf"
  encrypted   = true
  }
  user_data = <<EOF
              #!/bin/bash
              aws s3 cp s3://${var.bucket_name}/bootstrap.sh /tmp/bootstrap.sh
              chmod +x /tmp/bootstrap.sh
              /tmp/bootstrap.sh
              EOF

  tags = {
    Name = var.instance_name
  }
  lifecycle {
    create_before_destroy = true
  }
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  connection {
    type  = "ssm"
    host  = self.public_ip
    user  = "ec2-user"
  }  
}

data "aws_vpc" "default" {
  default = true
}
resource "aws_security_group" "ec2_sg" {
  name_prefix = "${var.environment}-instance-sg"
  description = "Security group for ${var.environment} EC2 instances"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

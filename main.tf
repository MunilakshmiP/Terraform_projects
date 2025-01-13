variable "aws_value" {
  description = "Value of AMI"
  default     = "ami-053b12d3152c0cc71"
}

variable "aws_instance_type" {
  description = "Value of instance type"
  default     = "t2.micro"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.aws_value
  instance_type = var.aws_instance_type
  key_name      = "aws_logins"

  tags = {
    Name = "demo_variable_instance"
  }
}


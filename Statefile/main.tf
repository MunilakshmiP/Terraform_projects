# Specify the AWS provider
provider "aws" {
  region = "ap-south-1"
}

# Resource: EC2 Instance
resource "aws_instance" "muni" {
  ami           = "ami-053b12d3152c0cc71" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "aws_logins"            # Replace with your actual key pair name

  # Optional tags to organize your resources
  tags = {
    Name = "MuniInstance"
  }
}

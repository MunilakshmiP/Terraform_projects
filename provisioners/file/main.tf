provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-053b12d3152c0cc71" # Replace with a valid AMI
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  provisioner "file" {
    source      = "hello.txt" # A file on your local machine
    destination = "/home/ec2-user/hello.txt"
  }
}

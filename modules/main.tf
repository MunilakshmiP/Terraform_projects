provider "aws" {
  region = "ap-south-1"
}


  module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-053b12d3152c0cc71" # replace this
  aws_instance_type = "t2.micro"
  key_name      = "aws_logins"

}

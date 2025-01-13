provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami           = var.aws_value
  instance_type = var.aws_instance_type
  key_name      = "aws_logins"

}

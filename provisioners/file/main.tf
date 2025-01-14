resource "aws_instance" "example" {
  ami           = "ami-053b12d3152c0cc71"           # Your AMI ID
  instance_type = "t2.micro"                        # Instance type

  provisioner "file" {
    source      = "/c/Users/muni/hello.txt"  # Path to the local hello.txt file
    destination = "/home/ec2-user/hello.txt"          # Path on the EC2 instance

    connection {
      type        = "ssh"
      user        = "ec2-user"                        # SSH user for Amazon Linux
      private_key = file("C:/Users/muni/Downloads/aws_logins.pem")  # Path to your private k>
      host        = self.public_ip                    # EC2 instance's public IP
    }
  }
}




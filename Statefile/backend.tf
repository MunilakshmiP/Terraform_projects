terraform {
  backend "s3" {
    bucket         = "muni-demo-s3-xyz"      # Name of the S3 bucket
    region         = "ap-south-1"            # AWS region of the bucket
    key            = "muni/terraform.tfstate" # Path for the state file in the bucket
   
  }
}

provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "ec2" {
  ami           = "ami-machine_ID"  
  instance_type = "ec2_Machine_Type"

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "s3-terraform-bucket"  
  acl    = "private"
}



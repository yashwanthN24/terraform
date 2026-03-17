provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "ec2_instance_023" {
  ami = "ami-0a14f53a6fe4dfcd1"
  instance_type = "t3.micro"
}

output "ec2_public_ip" {
  value = aws_instance.ec2_instance_023.public_ip
}




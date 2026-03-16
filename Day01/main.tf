provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0a14f53a6fe4dfcd1"  # Specify an appropriate AMI ID
    instance_type = "t3.micro"
}
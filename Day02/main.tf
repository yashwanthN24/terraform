variable "ami_value" {
  description = "value for the ami"
}

variable "instance_type_value" {
  description = "value for instance type"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance_01" {
  ami = var.ami_value
  instance_type = var.instance_type_value
}

# now for the values terraform looks for a file called terraform.tfvars to populate values for this variables

# By default when we run terraform apply command it looks for terraform.tfvars 

# for different name you have to pass in the flag --vars-file=file

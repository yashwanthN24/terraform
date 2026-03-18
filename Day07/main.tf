provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value for ami of ec2 instance"
}

variable "instance_type" {
  description = "value for instance type of ec2 instance"
}

module "ec2_module" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type

}

# pass these values from terraform.tfvars
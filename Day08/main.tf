provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value for ami of ec2 instance"
}

variable "instance_type" {
  description = "value for instance type of ec2 instance"
  type = map(string)

  default = {
    "dev" = "t3.small"
    "stg" = "t3.micro"
    "prod" = "t3.large"
    
  }
}

module "ec2_module" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = lookup(var.instance_type , terraform.workspace , "t2.micro")

}

# pass these values from terraform.tfvars

# create environemtn by running terraform workspace new environment
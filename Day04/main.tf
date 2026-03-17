provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "./modules"
  ami_value = "ami-0a14f53a6fe4dfcd1"
  instance_type = "t3.micro"
}

output "ec2_result" {
  value = module.ec2.ec2_public_ip
}
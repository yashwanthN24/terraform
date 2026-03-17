resource "aws_instance" "ec2_instance_02" {
    ami = var.ami_value
    instance_type = var.instance_type_value
}
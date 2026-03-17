output "public_ip_of_ec2" {
 value = aws_instance.ec2_instance_02.public_ip
}
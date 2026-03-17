
terraform {
  backend "s3" {
    bucket = "yashwanth-terraform"
    key    = "yashwanth/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}

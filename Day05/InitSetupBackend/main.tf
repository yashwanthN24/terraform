resource "aws_s3_bucket" "s3_bucket" {
  bucket = "yashwanth-terraform"
}

output "s3_bucket_details" {
  value = aws_s3_bucket.s3_bucket.bucket
}
resource "aws_s3_bucket" "webapp" {
  bucket = var.bucket

 tags = {
    Application = var.application
    terraform   = true
  }
}
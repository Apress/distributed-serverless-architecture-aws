output "bucket_arn" {
    description = "ARN of the s3 bucket"
    value = aws_s3_bucket.webapp.arn
}
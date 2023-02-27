output "dynamodb_arn" {
    description = "ARN of the Dynamodb Table"
    value = aws_dynamodb_table.webapp.arn
}
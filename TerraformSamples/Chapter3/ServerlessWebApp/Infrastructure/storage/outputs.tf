output "dynamodb_arn" {
    description = "ARN of the Dynamodb Table"
    value = module.dynamodb.dynamodb_arn
}
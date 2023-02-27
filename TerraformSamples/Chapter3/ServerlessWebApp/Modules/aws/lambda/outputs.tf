###### Lambda Outputs ######

output "lambda_arn" {
  description = "ARN of Lambda Function"
  value       = aws_lambda_function.serverless.arn
}
output "invoke_arn" {
  description = "invoke arn"
  value       = aws_lambda_function.serverless.invoke_arn
}


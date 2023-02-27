
output "apigw_api_id" {
  description = "ID of REST API"
  value       = aws_api_gateway_rest_api.serverless.id
}

output "apigw_api_arn" {
  description = "ARN of REST API"
  value       = aws_api_gateway_rest_api.serverless.arn
}

output "apigw_api_execution_arn" {
  description = "Execution ARN of REST API"
  value       = aws_api_gateway_rest_api.serverless.execution_arn
}

output "apigw_stage_invoke_url" {
  description = "The URL to invoke the API pointing to the stage"
  value       = aws_api_gateway_stage.serverlessStage.invoke_url
}


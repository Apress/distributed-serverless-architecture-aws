##### Creation of Lambda Function #######

resource "aws_lambda_function" "serverless" {
  function_name = var.function_name
  role          = aws_iam_role.iam_for_lambda.arn
  filename      = var.filename
  runtime       = var.runtime
  handler       = var.handler
  timeout       = var.timeout
  tags = {
    Application = var.application
    terraform   = true
  }
}
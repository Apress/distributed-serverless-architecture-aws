module "lambda"{
    source="../../Modules/aws/lambda"
    function_name=var.function_name
    filename      = var.filename
    runtime       = var.runtime
    handler       = var.handler
    timeout       = var.timeout
    application   = var.application
    role_name     = var.role_name
    region        = var.region
}

###### Permissions to allow API Gateway to invoke Lambda #######

resource "aws_lambda_permission" "allow_apigw" {
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  # The /*/*/* part allows invocation from any stage, method and resource path within API Gateway REST API.
  source_arn = "${module.apigateway.apigw_api_execution_arn}/*/*/*"
}
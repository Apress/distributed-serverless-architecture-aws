###### Creation of API Gateway - REST API ######

resource "aws_api_gateway_rest_api" "serverless" {

  name = var.rest_api_name
  endpoint_configuration {
    types = var.rest_api_type
  }
  tags = {
    Application = var.application
    terraform   = true
  }
}

##### Creation of API Gateway Resource ######

resource "aws_api_gateway_resource" "serverlessResource" {
  rest_api_id = aws_api_gateway_rest_api.serverless.id
  parent_id   = aws_api_gateway_rest_api.serverless.root_resource_id
  path_part   = var.path_part
}


##### Creation of API Gateway Method #######

resource "aws_api_gateway_method" "serverlessMethod" {
  rest_api_id   = aws_api_gateway_rest_api.serverless.id
  resource_id   = aws_api_gateway_resource.serverlessResource.id
  http_method   = var.http_method
  authorization = var.authorization
}


##### Creation of API Gateway Integration ######

resource "aws_api_gateway_integration" "serverlessIntegration" {
  rest_api_id             = aws_api_gateway_rest_api.serverless.id
  resource_id             = aws_api_gateway_resource.serverlessResource.id
  http_method             = var.http_method
  integration_http_method = var.integration_http_method
  type                    = var.type
  uri                     = var.lambda_invoke_arn
}


##### Creation of API Gateway Deployment ######

resource "aws_api_gateway_deployment" "serverlessDeployment" {
  rest_api_id = aws_api_gateway_rest_api.serverless.id
  depends_on = [aws_api_gateway_method.serverlessMethod]
}

##### Creation of API Gateway Stage ######

resource "aws_api_gateway_stage" "serverlessStage" {
  rest_api_id   = aws_api_gateway_rest_api.serverless.id
  stage_name    = var.stage_name
  deployment_id = aws_api_gateway_deployment.serverlessDeployment.id
  tags = {
    Application = var.application
    terraform   = true
  }
}
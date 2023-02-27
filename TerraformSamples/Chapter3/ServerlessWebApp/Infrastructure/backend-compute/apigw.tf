module "apigateway"{
    source="../../Modules/aws/apigw"
    application   = var.application
    rest_api_name = var.rest_api_name
    path_part     = var.path_part
    stage_name    = var.stage_name
    lambda_invoke_arn = module.lambda.invoke_arn
}

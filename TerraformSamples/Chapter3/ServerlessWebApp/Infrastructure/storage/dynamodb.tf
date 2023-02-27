module "dynamodb" {
    source = "../../Modules/aws/dynamodb"
    dynamodb_name = var.dynamodb_name
    hash_key = var.hash_key
    application = var.application
}

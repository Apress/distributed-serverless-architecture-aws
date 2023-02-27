module "s3" {
    source = "../../Modules/aws/s3"
    bucket = var.bucket
    application = var.application
}

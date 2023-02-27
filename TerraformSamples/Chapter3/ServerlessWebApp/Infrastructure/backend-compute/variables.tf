variable "function_name" {
  description = "Name of the Lambda Function"
  type        = string
}

variable "filename" {
  description = "Path to the function's deployment package within the local filesystem"
  type        = string
}

variable "runtime" {
  description = "Identifier of the function's runtime"
  type        = string
}

variable "handler" {
  description = "Function Entrypoint"
  type        = string
}

variable "timeout" {
  description = "Amount of time your Lambda Function has to run in seconds"
  type        = number
  default     = 90
}

variable "role_name" {
  description = "Name of an IAM role created for Lambda"
  type        = string
}

variable "application" {
  description = "Name of application"
  type        = string
}

variable "region" {
  type        = string
  description = "default region to store terraform state"
  default = "us-east-1"
}

variable "rest_api_name" {
  description = "Name of the rest api"
  type        = string
}

variable "path_part" {
  description = "The last path segment of this API resource."
  type        = string
}

variable "stage_name" {
  description = "Name of API Gateway Stage"
  type        = string
}

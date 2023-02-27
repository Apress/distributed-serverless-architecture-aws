####### API Gateway Related Variables #######

variable "rest_api_name" {
  description = "Name of the rest api"
  type        = string
}

variable "rest_api_type" {
  description = "A list of endpoint types. Valid values: EDGE, REGIONAL or PRIVATE"
  type        = list(any)
  default     = ["REGIONAL"]
}

variable "path_part" {
  description = "The last path segment of this API resource."
  type        = string
}

variable "http_method" {
  description = "The HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  type        = string
  default     = "ANY"
}

variable "authorization" {
  description = "The type of authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS)"
  type        = string
  default     = "NONE"
}

variable "integration_http_method" {
  description = "The integration HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONs, ANY, PATCH) specifying how API Gateway will interact with the back end. Required if type is AWS, AWS_PROXY, HTTP or HTTP_PROXY."
  type        = string
  default     = "POST"
}

variable "type" {
  description = "The integration input's type."
  type        = string
  default     = "AWS_PROXY" #for Lambda proxy integration
}

variable "stage_name" {
  description = "Name of API Gateway Stage"
  type        = string
}

variable "lambda_invoke_arn" {
  description = "Arn of the Lambda function"
  type        = string
}

variable "application" {
  description = "Name of application"
  type        = string
}
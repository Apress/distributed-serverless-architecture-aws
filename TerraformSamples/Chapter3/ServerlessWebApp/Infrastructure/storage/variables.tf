variable "dynamodb_name" {
  description = "Name of the dynamodb table"
  type        = string
  default     = "webapp"
}

variable "hash_key" {
  description = "Attribute to use as the hash (partition) key."
  type        = string
}

variable "application" {
  description = "Name of application"
  type        = string
}
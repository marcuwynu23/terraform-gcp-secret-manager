variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "secret_id" {
  description = "The ID of the secret to create"
  type        = string
  default     = "my-api-key"
}

variable "secret_data" {
  description = "The secret data value"
  type        = string
  sensitive   = true
}

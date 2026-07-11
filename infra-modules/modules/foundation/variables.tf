variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "services" {
  description = "GCP APIs to enable."
  type        = set(string)
}

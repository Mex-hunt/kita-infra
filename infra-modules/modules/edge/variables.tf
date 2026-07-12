variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "static_ip_name" {
  description = "Name of the global external IP reserved for the public GKE ingress."
  type        = string
}

variable "application_hostname" {
  description = "DuckDNS hostname for the application."
  type        = string
}

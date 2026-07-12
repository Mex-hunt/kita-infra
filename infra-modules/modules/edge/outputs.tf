output "static_ip_name" {
  description = "Global external static IP resource name."
  value       = google_compute_global_address.public_ingress.name
}

output "static_ip_address" {
  description = "Global external IPv4 address."
  value       = google_compute_global_address.public_ingress.address
}

output "application_hostname" {
  description = "Configured application hostname."
  value       = trimsuffix(var.application_hostname, ".")
}

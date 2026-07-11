output "static_ip_name" {
  description = "Regional internal static IP resource name."
  value       = google_compute_address.internal_ingress.name
}

output "static_ip_address" {
  description = "Regional internal IPv4 address."
  value       = google_compute_address.internal_ingress.address
}

output "dns_zone_name" {
  description = "Private Cloud DNS managed zone name."
  value       = var.enable_dns ? google_dns_managed_zone.application[0].name : null
}

output "application_hostname" {
  description = "Configured application hostname."
  value       = var.enable_dns ? trimsuffix(var.application_hostname, ".") : null
}

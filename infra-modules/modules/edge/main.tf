resource "google_compute_address" "internal_ingress" {
  project      = var.project_id
  name         = var.static_ip_name
  region       = var.region
  address_type = "INTERNAL"
  purpose      = "SHARED_LOADBALANCER_VIP"
  subnetwork   = var.subnetwork_id
}

resource "google_dns_managed_zone" "application" {
  count = var.enable_dns ? 1 : 0

  project     = var.project_id
  name        = var.dns_zone_name
  dns_name    = "${trimsuffix(var.domain_name, ".")}."
  description = "Private DNS zone for the Cloudkite application"
  visibility  = "private"

  private_visibility_config {
    networks {
      network_url = var.network_id
    }
  }

  lifecycle {
    precondition {
      condition     = var.domain_name != "" && var.application_hostname != ""
      error_message = "domain_name and application_hostname are required when enable_dns is true."
    }
  }
}

resource "google_dns_record_set" "application" {
  count = var.enable_dns ? 1 : 0

  project      = var.project_id
  managed_zone = google_dns_managed_zone.application[0].name
  name         = "${trimsuffix(var.application_hostname, ".")}."
  type         = "A"
  ttl          = 300
  rrdatas      = [google_compute_address.internal_ingress.address]
}

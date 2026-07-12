resource "google_compute_global_address" "public_ingress" {
  project = var.project_id
  name    = var.static_ip_name
}

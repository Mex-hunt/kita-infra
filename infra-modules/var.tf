variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "region" {
  description = "GCP region for the GKE cluster and subnet."
  type        = string
}

variable "zones" {
  description = "Zones used by the regional GKE cluster."
  type        = list(string)
}

variable "network_name" {
  description = "VPC network name."
  type        = string
}

variable "subnet_name" {
  description = "GKE subnet name."
  type        = string
}

variable "subnet_cidr" {
  description = "Primary subnet CIDR range."
  type        = string
}

variable "pods_range_name" {
  description = "Secondary range name for GKE pods."
  type        = string
}

variable "pods_cidr" {
  description = "Secondary CIDR range for GKE pods."
  type        = string
}

variable "services_range_name" {
  description = "Secondary range name for GKE services."
  type        = string
}

variable "services_cidr" {
  description = "Secondary CIDR range for GKE services."
  type        = string
}

variable "proxy_only_subnet_name" {
  description = "Proxy-only subnet name used by regional internal HTTP(S) load balancers."
  type        = string
}

variable "proxy_only_subnet_cidr" {
  description = "CIDR range for the regional proxy-only subnet."
  type        = string
}

variable "cluster_name" {
  description = "GKE cluster name."
  type        = string
}

variable "node_service_account_name" {
  description = "Service account ID used by GKE nodes."
  type        = string
}

variable "cloud_build_service_account_name" {
  description = "Service account ID used by Cloud Build."
  type        = string
}

variable "terraform_service_account_name" {
  description = "Service account ID used by Terraform automation."
  type        = string
}

variable "workload_service_account_name" {
  description = "Google service account ID used by the backend workload."
  type        = string
}

variable "cert_manager_service_account_name" {
  description = "Google service account ID used by cert-manager or Google CAS issuer."
  type        = string
}

variable "workload_identity_namespace" {
  description = "Kubernetes namespace used by the application."
  type        = string
}

variable "workload_identity_service_account" {
  description = "Kubernetes service account mapped to the backend Google service account."
  type        = string
}

variable "cert_manager_namespace" {
  description = "Kubernetes namespace used by cert-manager."
  type        = string
}

variable "cert_manager_kubernetes_service_account" {
  description = "Kubernetes service account mapped to the cert-manager Google service account."
  type        = string
}

variable "google_cas_issuer_kubernetes_service_account" {
  description = "Kubernetes service account used by google-cas-issuer."
  type        = string
}

variable "dockerhub_token_secret_id" {
  description = "Secret Manager ID containing the Docker Hub access token."
  type        = string
}

variable "required_services" {
  description = "GCP APIs required by the platform."
  type        = set(string)
}

variable "cas_ca_pool_id" {
  description = "Private CA Service pool ID used by google-cas-issuer."
  type        = string
}

variable "cas_certificate_authority_id" {
  description = "Private CA Service certificate authority ID."
  type        = string
}

variable "cas_ca_pool_tier" {
  description = "Private CA Service pool tier."
  type        = string
}

variable "cas_certificate_lifetime" {
  description = "Lifetime for the private certificate authority."
  type        = string
}

variable "cas_deletion_protection" {
  description = "Protect the private certificate authority from accidental deletion."
  type        = bool
}

variable "cloud_sql_instance_name" {
  description = "Cloud SQL PostgreSQL instance name."
  type        = string
}

variable "cloud_sql_database_name" {
  description = "Application PostgreSQL database name."
  type        = string
}

variable "cloud_sql_database_user" {
  description = "Application PostgreSQL user."
  type        = string
}

variable "cloud_sql_database_version" {
  description = "Cloud SQL PostgreSQL version."
  type        = string
}

variable "cloud_sql_tier" {
  description = "Cloud SQL machine tier."
  type        = string
}

variable "cloud_sql_edition" {
  description = "Cloud SQL edition. ENTERPRISE keeps demo resources moderate; ENTERPRISE_PLUS requires db-perf-optimized tiers."
  type        = string
}

variable "cloud_sql_availability_type" {
  description = "Cloud SQL availability type. REGIONAL provides automatic failover."
  type        = string
}

variable "cloud_sql_disk_size_gb" {
  description = "Initial Cloud SQL disk size."
  type        = number
}

variable "cloud_sql_disk_type" {
  description = "Cloud SQL disk type."
  type        = string
}

variable "cloud_sql_deletion_protection" {
  description = "Protect the Cloud SQL instance from accidental deletion."
  type        = bool
}

variable "private_service_range_prefix_length" {
  description = "Prefix length reserved for private service networking."
  type        = number
}

variable "database_credentials_secret_id" {
  description = "Secret Manager secret ID containing database credentials."
  type        = string
}

variable "ingress_static_ip_name" {
  description = "Name of the regional internal static IP used by the GKE ingress."
  type        = string
}

variable "enable_dns" {
  description = "Create a private Cloud DNS zone and application A record."
  type        = bool
}

variable "dns_zone_name" {
  description = "Private Cloud DNS managed zone name."
  type        = string
}

variable "domain_name" {
  description = "Private DNS suffix managed by Cloud DNS, without a trailing dot."
  type        = string
}

variable "application_hostname" {
  description = "Private hostname for the application."
  type        = string
}

variable "enable_cloud_build_triggers" {
  description = "Create GitHub feature and main Cloud Build triggers."
  type        = bool
}

variable "github_repository_owner" {
  description = "GitHub repository owner used by Cloud Build triggers."
  type        = string
}

variable "github_repository_name" {
  description = "GitHub repository name used by Cloud Build triggers."
  type        = string
}

variable "terraform_state_bucket_name" {
  description = "GCS bucket used by the infrastructure Cloud Build pipeline."
  type        = string
}

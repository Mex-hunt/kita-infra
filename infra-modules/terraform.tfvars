project_id = "chimezie-interview-project"
region     = "us-central1"
zones      = ["us-central1-a", "us-central1-b", "us-central1-f"]

network_name        = "cloudkite-vpc"
subnet_name         = "cloudkite-gke-subnet"
subnet_cidr         = "10.10.0.0/20"
pods_range_name     = "cloudkite-gke-pods"
pods_cidr           = "10.20.0.0/16"
services_range_name = "cloudkite-gke-services"
services_cidr       = "10.30.0.0/20"

cluster_name                      = "cloudkite-gke"
node_service_account_name         = "cloudkite-gke-nodes"
cloud_build_service_account_name  = "cloudkite-cloud-build"
terraform_service_account_name    = "cloudkite-terraform"
workload_service_account_name     = "cloudkite-backend"
workload_identity_namespace       = "cloudkite"
workload_identity_service_account = "cloudkite-backend"

dockerhub_token_secret_id = "cloudkite-dockerhub-token"

required_services = [
  "cloudbuild.googleapis.com",
  "compute.googleapis.com",
  "container.googleapis.com",
  "iam.googleapis.com",
  "iamcredentials.googleapis.com",
  "logging.googleapis.com",
  "monitoring.googleapis.com",
  "secretmanager.googleapis.com",
  "servicenetworking.googleapis.com",
  "sqladmin.googleapis.com",
]

cloud_sql_instance_name             = "cloudkite-postgres"
cloud_sql_database_name             = "cloudkite"
cloud_sql_database_user             = "cloudkite_app"
cloud_sql_database_version          = "POSTGRES_16"
cloud_sql_tier                      = "db-f1-micro"
cloud_sql_edition                   = "ENTERPRISE"
cloud_sql_availability_type         = "ZONAL"
cloud_sql_disk_size_gb              = 10
cloud_sql_disk_type                 = "PD_HDD"
cloud_sql_deletion_protection       = true
private_service_range_prefix_length = 16
database_credentials_secret_id      = "cloudkite-database-credentials"

ingress_static_ip_name = "cloudkite-public-ingress-ip"
application_hostname   = "chimex.duckdns.org"

enable_cloud_build_triggers = false
github_repository_owner     = ""
github_repository_name      = ""
terraform_state_bucket_name = "kita-infra"

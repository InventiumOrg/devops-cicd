variable "gke_username" {
  default     = "inventium-gha-terraform-gke"
  description = "GKE username"
}

variable "gke_password" {
  default     = data.hcp_vault_secrets_secret.inventium.secret_name["gke_access_key"]
  description = "GKE password"
}

variable "gke_num_nodes" {
  default     = 3
  description = "number of nods in GKE cluster"
}

# Vault Secret
data "hcp_vault_secrets_secret" "inventium" {
  app_name    = "Inventium"
  secret_name = "gke_access_key"
}

# GKE cluster
data "google_container_engine_versions" "gke_version" {
  location       = var.region
  version_prefix = "1.27."
}

resource "google_container_cluster" "primary" {
  name                     = "${var.project_id}-gke"
  location                 = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.vpc.name
  subnetwork               = google_compute_subnetwork.subnet.name
}

resource "google_container_node_pool" "primary_nodes" {
  name       = google_container_cluster.primary.name
  location   = var.region
  cluster    = google_container_cluster.primary.name
  version    = data.google_container_engine_versions.gke_version.release_channel_latest_version["STABLE"]
  node_count = var.gke_num_nodes
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    labels = {
      env = var.project_id
    }
    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${var.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

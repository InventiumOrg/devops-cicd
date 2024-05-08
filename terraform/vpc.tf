variable "project_id" {
  description = "project id"
  default     = "mythic-delight-421309"
}

variable "region" {
  description = "region"
  default     = "asia-southeast1"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  network       = google_compute_network.vpc.name
  region        = var.region
  ip_cidr_range = "10.10.0.0/24"
}

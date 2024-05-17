variable "gke_username" {
  default     = "inventium-gha-terraform-gke"
  description = "GKE username"
}

variable "gke_password" {
  # default     = data.hcp_vault_secrets_secret.inventium.secret_name["gke_access_key"]
  default     = "ewogICJ0eXBlIjogInNlcnZpY2VfYWNjb3VudCIsCiAgInByb2plY3RfaWQiOiAibXl0aGljLWRl bGlnaHQtNDIxMzA5IiwKICAicHJpdmF0ZV9rZXlfaWQiOiAiZjQ5YWU4ZTJhYTg1ZmE2Njg5ZDg0 NjZhMmFiYzEyZWQzZmUwNTNkMCIsCiAgInByaXZhdGVfa2V5IjogIi0tLS0tQkVHSU4gUFJJVkFU RSBLRVktLS0tLVxuTUlJRXZRSUJBREFOQmdrcWhraUc5dzBCQVFFRkFBU0NCS2N3Z2dTakFnRUFB b0lCQVFDdlRIM0Rwek4xZFYxWlxuTkJPU0hjVjhRV1prcXhMNWEveWdQdG9pSGR0WElTMno2bHl5 K3B0LzNiYlFpTFUyU1VDNDBURVdxWDEwZWtaM1xucXVlRTNjOTdKcnBwNTFJbHFzMzdQQ2lxR3Nt bkhieGNMRlRJa3RJaVdDaTc4Y25MWjNNMVJtcEJCZ3Qwek9xU1xudENla01XV3Bzd2tzVWZPOTlO eitqYWJ4VmlDUlJkcjh0S1poVDJncmxtNXluZFp0NVNSK1J6TytRQnN0eVVyS1xuWWN4aGJBRVRU K3pCNmVubVhLRzl0ekRUNXRNOWpOTmJvZ3BlUFk4aGhXZGNKai8xUS9FRTl6cEV1TEhnZDVGQVxu R1N1S29Gd09FVExUZFIvYTZhL1UrTWEvdzJGWnBnYkwzYzcvdnpnaHI4c2NoRjRFWStkbE43UFhr RlJSN0ZmVlxud2VVVTJMMU5BZ01CQUFFQ2dnRUFEaTdqckExZXFmMjllRWF3NEswYytlRTJ2aVZq U3gvMEdDa05zQjMzVGJUblxuQkR3TmxRT1d5a0V2bGU3QnJxczltOVo5SU1iRTJrUThhRmxCRXl4 NUtZOG9IUUowMEl4aHp4WitlY2ppRU8za1xuZkJhd0kyeFJxU3ExM1FNQ256ejNBdFA0Szl1bjJL THR4Y0hpeFRPajlKZUNRZjQ5ZU55VGR0c1NLMHViSmZXOVxuS3RWYU15OHpONUhnSXBpNUxORnA1 dHd0MVROYm5Tb1FCc21MWitIajNTT3lJa0h3SFhlcDlnTDhZUVgza2M2bFxuTHBVcXV1ZldBa0lq RWowbUJCd3V3QlJzNC9haHR0aE9nSTJ2c0RuNTI5VGc1WkxvQ3BYaHdJQlk0a3NsRDI0TFxudzJM dW9xY01NN2R3YUFRY3gxLzZtUmVXbnZ0Q2NvcnN6a29zUFRUNnB3S0JnUURVNzdic2gzZ0xpaVFt OUlkZVxuQVRnVmpzM0MvRi9hakxqbGJQN2dQSThSVUE0a20zRnRGUThyQ0JWVlZpelRrZmwzT28z bjhFY1NHUEE3ZlFqcFxueU0vbEJQaXNURmVqakQ1Qmd0R1o5TWpGZkg0UUsweGhIVzJQMCtZVnlY Wkt4U1Q1RjV0bFFNT1Mrdk5FQW4vd1xuaGJiV25GVFd4ZmNCMkNraHBheHdrZkZEbHdLQmdRRFN3 QzJYMWljWmZFcUpJUnZwcjNFVnh5SWVUV3JsRjBSVlxueHlOdEU2OStlVzl3ME12QVJLQy9wcGlM ZDlIZVJaKzRTSFVpNG5zMk9rZHRGQmNlMVZMMVVmenFIY1V0bzU0c1xuaHNtWXlIcWZZNDJsQ1hO NXYrMDZDRU1HTVMwV0VjNnpmM1R2cE9FWlAvU1pGbmZHdzNZWjRjUGJxaysvakRZWlxuWVFRR1pI cFN1d0tCZ0EwSFpkL3ZJZzlDc3BlWG1yakx4a3k3WWlldUhZZFgyUEJnek8rWGhRR0FMbjFhN1lQ SlxuS0JadjlpNDBpYVdnWnUwK3JmUWxKWlFiNW9jZFRYQlFremZtSi9rUzZzSGRFT29kUVFuMGls eGJFN09Wa3FUV1xua2grY3paVkRzSE0rd05aazlXTXFwVXpYQWcrRlA2TE42N1FSK0xiemdmdWc2 Rk5ndWI1aGo2dWRBb0dBVitWb1xuM291bGNQNmlnNEM0aUlUd1VCbm1RK2NiN3dIK01SeEZ6U2RK cVNEeWRvWE9oSmpheGpPd0tYTEdwOEkzOC83Y1xuUTdsYmsrbElndGkvTDgvZXNvd0lSSWc0Qldu WS9VOFY0MCt4dktvam1ESlI0L1JFOTFBY3pBZFVlNERmeVlNZFxuL1JpeC9QcnNnN0NZTWVDeGIr ZjE3TGFpWGd3WFFBeHpSa3MvclNNQ2dZRUFtTHJycGNCZ1RKVkl1YWltbjErUVxuWUIvNFNhUkZF MGdkQmlpd0YyVEJmcWJIaDBKd21OOFdQVHV0N1FjY25kRW5ESDFLQ1FaL0JSUGtrZGxKQUFaRFxu YVZMMDBIOTduTVV3L0RndFpUTVQ1NlVMcG1naXFmTS9rQ0dhNzY3SFhheGJ2NWxoMjY0cFRCK3VU SEE5QUR0SlxuK2cyTk8rbUlHVzA3NE9zZHJiSjM4Rms9XG4tLS0tLUVORCBQUklWQVRFIEtFWS0t LS0tXG4iLAogICJjbGllbnRfZW1haWwiOiAiaW52ZW50aXVtLWdoYS10ZXJyYWZvcm0tZ2tlQG15 dGhpYy1kZWxpZ2h0LTQyMTMwOS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsCiAgImNsaWVudF9p ZCI6ICIxMDExNjkzMTUzOTgzODEwMzU2MjUiLAogICJhdXRoX3VyaSI6ICJodHRwczovL2FjY291 bnRzLmdvb2dsZS5jb20vby9vYXV0aDIvYXV0aCIsCiAgInRva2VuX3VyaSI6ICJodHRwczovL29h dXRoMi5nb29nbGVhcGlzLmNvbS90b2tlbiIsCiAgImF1dGhfcHJvdmlkZXJfeDUwOV9jZXJ0X3Vy bCI6ICJodHRwczovL3d3dy5nb29nbGVhcGlzLmNvbS9vYXV0aDIvdjEvY2VydHMiLAogICJjbGll bnRfeDUwOV9jZXJ0X3VybCI6ICJodHRwczovL3d3dy5nb29nbGVhcGlzLmNvbS9yb2JvdC92MS9t ZXRhZGF0YS94NTA5L2ludmVudGl1bS1naGEtdGVycmFmb3JtLWdrZSU0MG15dGhpYy1kZWxpZ2h0 LTQyMTMwOS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsCiAgInVuaXZlcnNlX2RvbWFpbiI6ICJn b29nbGVhcGlzLmNvbSIKfQo="
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

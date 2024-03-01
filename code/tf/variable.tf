variable "project_id" {
  description = "GCP Project Id to host AI kubernetes"
}

variable "region" {
  description = "region"
}

provider "google" {
  project = var.project_id
  region  = var.region
}



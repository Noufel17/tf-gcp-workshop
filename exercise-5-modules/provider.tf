terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  # Terraform will automatically use the credentials from your gcloud CLI login.
  project = var.project_id
  region  = var.region
}
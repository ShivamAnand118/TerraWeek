variable "bucket_name" {
  description = "Name of the GCP cloud storage bucket"
  type        = string
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

resource "google_storage_bucket" "cloud_storage_bucket" {
  name     = var.bucket_name
  location = var.gcp_region
}

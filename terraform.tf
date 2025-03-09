terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.24.0"
    }
  }
}

provider "google" {
  project     = "${PROJECT_ID}"
  region      = var.region
}

  resource "google_storage_bucket" "airflow_bucket" {
    name          = var.bucket_name
    location      = var.location
    storage_class = var.storage_class
    force_destroy = true
  }
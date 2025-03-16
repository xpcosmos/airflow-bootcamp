terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.24.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}


resource "google_storage_bucket" "airflow_bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class
  force_destroy = true
  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_service_account" "airflow" {
  account_id = "airflow-test-user"
  display_name = "airflow_test_user"
}

resource "google_project_iam_member" "airflow" {
  project =  var.project_id
  role    = "roles/${var.airflow_role}"
  member  = "serviceAccount:${google_service_account.airflow.email}"
}

resource "google_service_account_key" "airflow" {
  service_account_id = google_service_account.airflow.name
  private_key_type    = var.private_key_type
}

resource "local_file" "private_key_file" {
  content  = google_service_account_key.airflow.private_key
  filename = var.private_key_path
}

variable "region" {
  description = "Regiao de bucket"
  default = "us-central1"
}

variable "bucket_name" {
  description = "Nome do GCP Bucket"
  default = "airflow_bucket__test-dev--mikeias-d-s-o"
}

variable "location" {
  default = "US"
}

variable "storage_class" {
  default = "STANDARD"
}

variable "project_id" {
  default = "test-dev--mikeias-d-s-o"
}
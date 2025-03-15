variable "region" {
  description = "Regiao de bucket"
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Nome do GCP Bucket"
  type        = string
}

variable "location" {
  default = "US"
}

variable "storage_class" {
  default = "STANDARD"
}

variable "project_id" {
  description = "Nome do Projeto GCP"
  type        = string
}
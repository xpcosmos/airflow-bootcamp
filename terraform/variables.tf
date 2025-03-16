# ----------------------------------------
# Comuns
# ----------------------------------------
variable "region" {
  description = "Regiao de bucket"
  default     = "us-central1"
}

variable "location" {
  default = "US"
}

variable "project_id" {
  description = "Nome do Projeto GCP"
  type        = string
}

# ----------------------------------------
# Storage
# ----------------------------------------
variable "bucket_name" {
  description = "Nome do GCP Bucket"
  type        = string
}

variable "storage_class" {
  default = "STANDARD"
}

# ----------------------------------------
# Service Account
# ----------------------------------------
variable "user_account_id" {
  description = "Nome do ID de usuário. [azAZ09-]"
  type = string
}

variable "airflow_role" {
    description = "Permissoes para o airflow"
}


# ----------------------------------------
# Key
# ----------------------------------------
variable "public_key_type" {
  default =  "TYPE_GOOGLE_CREDENTIALS_FILE"
  description = "Tipo de retorno das credenciais"
  type = string
}

variable "private_key_path" {
    default = "private_key.json"
    description = "local onde as credenciais sendo armazenadas"
    sensitive = true
}

# -------------------------------------------
# required varibles
# -------------------------------------------

variable "dbt_cloud_project_id" {
  description = "The dbt Cloud project ID to create the connection in"
  type        = number
}

variable "bigquery_connection_name" {
  description = "The name of the connection to bigquery in dbt Cloud"
  type        = string
}

variable "auth_provider_x509_cert_url" {
  description = "Auth Provider X509 Cert URL for the Service Account to connect to dbt Cloud"
  type        = string
  sensitive   = true
}

variable "auth_uri" {
  description = "Auth URI for the Service Account to connect to dbt Cloud"
  type        = string
  sensitive   = true
}

variable "client_email" {
  description = "Service Account email to connect to dbt Cloud"
  type        = string
}

variable "client_id" {
  description = "Client ID of the Service Account to connect to dbt Cloud"
  type        = string
}

variable "client_x509_cert_url" {
  description = "Client X509 Cert URL for the Service Account to connect to dbt Cloud"
  type        = string
  sensitive   = true
}

variable "gcp_project_id" {
  description = "GCP project ID that dbt Cloud will connect to"
  type        = string
}

variable "private_key" {
  description = "Private key of the Service Account to connect to dbt Cloud"
  type        = string
  sensitive   = true
}

variable "private_key_id" {
  description = "Private key ID of the Service Account to connect to dbt Cloud"
  type        = string
}

variable "timeout_seconds" {
  description = "Timeout in seconds for queries run by dbt Cloud"
  type        = number
}

variable "token_uri" {
  description = "Token URI for the Service Account to connect to dbt Cloud"
  type        = string
}

# -------------------------------------------
# optional varibles
# -------------------------------------------

variable "dataproc_cluster_name" {
  description = "Dataproc cluster name for PySpark workloads triggered by dbt Cloud"
  type        = string
  default     = null
}

variable "dataproc_region" {
  description = "Google Cloud region for PySpark workloads on Dataproc triggered by dbt Cloud"
  type        = string
  default     = null
}

variable "gcs_bucket" {
  description = "URI for a Google Cloud Storage bucket to host Python code executed via Dataproc"
  type        = string
  default     = null
}

variable "location" {
  description = "Location to create new Datasets in"
  type        = string
  default     = null
}

variable "maximum_bytes_billed" {
  description = "Max number of bytes that can be billed for a given BigQuery query"
  type        = number
  default     = null
}

variable "retries" {
  description = "Number of retries for queries"
  type        = number
  default     = null
}

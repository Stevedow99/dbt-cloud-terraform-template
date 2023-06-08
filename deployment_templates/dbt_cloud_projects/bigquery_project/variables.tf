# -----------------------------------------------------
# gathering dbt Cloud account information
# -----------------------------------------------------

variable "dbt_cloud_account_id" {
  description = "The unique numeric id tied to the dbt Cloud account"
  sensitive   = true
}

variable "dbt_cloud_token" {
  description = "The service token terraform will use to appl changes to dbt Cloud"
  sensitive   = true
}

# -----------------------------------------------------
# gathering dbt cloud project information
# -----------------------------------------------------

variable "dbt_cloud_project_name" {
  description = "The name of the dbt Cloud project"
  type        = string
}

variable "dbt_project_subdirectory" {
  description = "Optional - The name of the dbt project subdirectory if the dbt project is not at the root of the repository"
  type        = string
  default     = null
}

# -----------------------------------------------------
# gathering bigquery connection info
# -----------------------------------------------------


# required varibles
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


# optional varibles

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

# -----------------------------------------------------
# gathering github connection info
# -----------------------------------------------------

variable "remote_url" {
  description = "Git URL for the GitHub repository in the format of 'git://github.com/<github_org>/<github_repo>.git' "
  type        = string
}

variable "github_installation_id" {
  description = "The github app installation id for the connection to dbt Cloud (you need to make the github app integration in account settings in the Cloud UI) to get this value login to dbt Cloud then paste this in the browser 'https://<dbt_cloud_url>/api/v2/integrations/github/installations/' grab the id for the github connection you would like to use"
  type        = number
}


# -----------------------------------------------------
# setting up the dbt Cloud environments
# -----------------------------------------------------

variable "environments" {
  description = "List of environments to create in dbt Cloud"
  type = list(object({
    environment_name   = string
    dbt_version        = string
    environment_type   = optional(string)
    bigquery_dataset   = optional(string)
    environment_schema = optional(string)
    number_of_threads  = optional(number, 4)
    use_custom_branch  = optional(bool)
    custom_branch      = optional(string)
  }))
}

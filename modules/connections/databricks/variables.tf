# -------------------------------------------
# required varibles
# -------------------------------------------

variable "dbt_cloud_project_id" {
  description = "The dbt Cloud project ID to create the connection in"
  type        = number
}

variable "databricks_connection_name" {
  description = "The name of the connection to Databricks in dbt Cloud"
  type        = string
}

variable "databricks_host_name" {
  description = "The adapter id for the connection to Databricks in dbt Cloud"
  type        = string
}

variable "databricks_http_path" {
  description = "The token to use for the connection to Databricks in dbt Cloud"
  type        = string
}



# -------------------------------------------
# optional varibles
# -------------------------------------------

variable "databricks_default_catalog" {
  description = "The default Databricks catalog name for the connection"
  type        = string
  default     = null
}
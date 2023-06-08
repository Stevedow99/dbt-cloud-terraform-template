# -------------------------------------------
# required varibles
# -------------------------------------------

variable "dbt_cloud_project_id" {
  description = "The dbt Cloud project ID to create the connection in"
  type        = number
}

variable "environment_name" {
  description = "The name of the environment to in dbt Cloud"
  type        = string
}

variable "environment_schema" {
  description = "The default schema to use for the environment"
  type        = string
}

variable "dbt_version" {
  description = "The dbt version for the environment in dbt Cloud"
  type        = string
}

variable "bigquery_dataset" {
  description = "The default BigQuery database to use for the connection"
  type        = string
}

# -------------------------------------------
# optional varibles
# -------------------------------------------

variable "number_of_threads" {
  description = "The number of threads to use for the Snowflake connection"
  type        = number
  default     = 4
}

variable "environment_type" {
  description = "The type of environment in dbt Cloud (must be either development or deployment)"
  type        = string
  default     = "deployment"
}

variable "use_custom_branch" {
  description = "Whether to use a custom git branch in the dbt Cloud environment"
  type        = bool
  default     = null
}

variable "custom_branch" {
  description = "The name of the custom branch if using one"
  type        = string
  default     = null
}

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
# gathering databricks connection info
# -----------------------------------------------------

# required

variable "databricks_connection_name" {
  description = "The name of the connection to databricks in dbt Cloud"
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




# optional varibles

variable "databricks_default_catalog" {
  description = "The default Databricks catalog name for the connection"
  type        = string
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
    environment_name           = string
    dbt_version                = string
    environment_type           = optional(string)
    environment_schema         = optional(string)
    databricks_default_catalog = optional(string)
    databricks_adapter_id      = optional(number, 4)
    databricks_token           = optional(string)
    environment_target_name    = optional(string)
    number_of_threads          = optional(number, 4)
    use_custom_branch          = optional(bool)
    custom_branch              = optional(string)
  }))
}

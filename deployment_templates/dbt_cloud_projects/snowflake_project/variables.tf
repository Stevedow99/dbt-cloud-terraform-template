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
# gathering snowflake connection info
# -----------------------------------------------------

# required

variable "snowflake_connection_name" {
  description = "The name of the connection to Snowflake in dbt Cloud"
  type        = string
}

variable "snowflake_account" {
  description = "The Snowflake account name for the connection"
  type        = string
}

variable "default_snowflake_database" {
  description = "The default Snowflake database name for the connection"
  type        = string
}

variable "default_snowflake_warehouse" {
  description = "The default Snowflake warehouse name for the connection"
  type        = string
}


# optional varibles

variable "default_role" {
  description = "The default role name for the Snowflake connection"
  type        = string
  default     = null
}

variable "allow_session_keep_alive" {
  description = "Whether or not the connection should allow client session keep alive"
  type        = bool
  default     = null
}

# Snowflake SSO pass through varibles (optional)

variable "allow_sso" {
  description = "Whether or not the connection should allow SSO pass through login to Snowflake"
  type        = bool
  default     = null
}

variable "oauth_client_id" {
  description = "The Snowflake OAuth App client identifier"
  type        = string
  default     = null
  sensitive   = true
}

variable "oauth_client_secret" {
  description = "The Snowflake OAuth App client secret"
  type        = string
  default     = null
  sensitive   = true
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
    environment_name                 = string
    dbt_version                      = string
    environment_type                 = optional(string)
    snowflake_auth_type              = optional(string)
    database                         = optional(string)
    warehouse                        = optional(string)
    snowflake_user                   = optional(string)
    environment_schema               = optional(string)
    snowflake_role                   = optional(string)
    snowflake_auth_type              = optional(string)
    snowflake_password               = optional(string)
    snowflake_private_key            = optional(string)
    snowflake_private_key_passphrase = optional(string)
    number_of_threads                = optional(number, 4)
    use_custom_branch                = optional(bool)
    custom_branch                    = optional(string)
  }))
}

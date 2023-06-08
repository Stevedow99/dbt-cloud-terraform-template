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

variable "database" {
  description = "The default Snowflake database name for the connection"
  type        = string
}

variable "warehouse" {
  description = "The default Snowflake warehouse name for the connection"
  type        = string
}

variable "snowflake_user" {
  description = "The Snowflake user name for the connection"
  type        = string
}

# -------------------------------------------
# optional varibles
# -------------------------------------------

variable "snowflake_role" {
  description = "The snowflake role name for the Snowflake connection"
  type        = string
  default     = null
}

variable "snowflake_auth_type" {
  description = "The connection method for Snowflake ('password' or 'keypair')"
  type        = string
  default     = "password"
}

# if using password

variable "snowflake_password" {
  description = "Password for Snowflake"
  type        = string
  sensitive   = true
  default     = null
}

# if using key pair

variable "snowflake_private_key" {
  description = "Private key for Snowflake"
  type        = string
  sensitive   = true
  default     = null
}

variable "snowflake_private_key_passphrase" {
  description = "Private key passphrase for Snowflake"
  type        = string
  sensitive   = true
  default     = null
}


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

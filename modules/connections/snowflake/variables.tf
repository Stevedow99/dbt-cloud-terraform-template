# -------------------------------------------
# required varibles
# -------------------------------------------

variable "dbt_cloud_project_id" {
  description = "The dbt Cloud project ID to create the connection in"
  type        = number
}

variable "snowflake_connection_name" {
  description = "The name of the connection to Snowflake in dbt Cloud"
  type        = string
}

variable "account" {
  description = "The Snowflake account name for the connection"
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

# -------------------------------------------
# optional varibles
# -------------------------------------------

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

# Snowflake SSO pass through varibles

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

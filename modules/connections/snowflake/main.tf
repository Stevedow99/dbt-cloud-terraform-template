terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

resource "dbtcloud_connection" "snowflake_credential" {
  name                = var.snowflake_connection_name
  type                = "snowflake"
  project_id          = var.dbt_cloud_project_id
  database            = var.database
  account             = var.account
  warehouse           = var.warehouse
  role                = var.default_role
  allow_keep_alive    = var.allow_session_keep_alive
  allow_sso           = var.allow_sso
  oauth_client_id     = var.oauth_client_id
  oauth_client_secret = var.oauth_client_secret
}

resource "dbtcloud_project_connection" "snowflake_connection" {
  connection_id = dbtcloud_connection.snowflake_credential.connection_id
  project_id    = var.dbt_cloud_project_id
}

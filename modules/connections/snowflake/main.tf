terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

resource "dbt_cloud_connection" "snowflake_credential" {
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

resource "dbt_cloud_project_connection" "snowflake_connection" {
  connection_id = dbt_cloud_connection.snowflake_credential.connection_id
  project_id    = var.dbt_cloud_project_id
}

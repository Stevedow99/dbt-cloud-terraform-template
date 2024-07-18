terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

resource "dbtcloud_connection" "databricks_connection_settings" {
  project_id = var.dbt_cloud_project_id
  name       = var.databricks_connection_name
  type       = "adapter"
  database   = ""
  host_name  = var.databricks_host_name
  http_path  = var.databricks_http_path
  catalog    = var.databricks_default_catalog

}

resource "dbtcloud_project_connection" "snowflake_connection" {
  connection_id = dbtcloud_connection.databricks_connection_settings.connection_id
  project_id    = var.dbt_cloud_project_id
}

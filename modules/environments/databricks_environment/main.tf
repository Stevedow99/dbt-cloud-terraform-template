terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

resource "dbtcloud_databricks_credential" "databricks_environment_credential" {
  count = var.environment_type == "development" ? 0 : 1


  project_id   = var.dbt_cloud_project_id
  adapter_type = "databricks"
  adapter_id   = var.databricks_adapter_id
  # catalog      = var.databricks_default_catalog
  schema       = var.environment_schema
  token        = var.databricks_token
  target_name  = var.environment_target_name
}


resource "dbtcloud_environment" "databricks_environment" {

  credential_id     = var.environment_type == "development" ? null : dbtcloud_databricks_credential.databricks_environment_credential[0].credential_id
  project_id        = var.dbt_cloud_project_id
  name              = var.environment_name
  type              = var.environment_type
  dbt_version       = var.dbt_version
  use_custom_branch = var.use_custom_branch
  custom_branch     = var.custom_branch
}

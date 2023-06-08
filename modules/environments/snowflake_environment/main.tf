terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

resource "dbt_cloud_snowflake_credential" "snowflake_environment_credential" {
  count = var.environment_type == "development" ? 0 : 1


  project_id             = var.dbt_cloud_project_id
  auth_type              = var.snowflake_auth_type
  database               = var.database
  warehouse              = var.warehouse
  user                   = var.snowflake_user
  password               = var.snowflake_password
  private_key            = var.snowflake_private_key
  private_key_passphrase = var.snowflake_private_key_passphrase
  schema                 = var.environment_schema
  role                   = var.snowflake_role
  num_threads            = var.number_of_threads
}

resource "dbt_cloud_environment" "snowflake_environment" {

  credential_id     = var.environment_type == "development" ? null : dbt_cloud_snowflake_credential.snowflake_environment_credential[0].credential_id
  project_id        = var.dbt_cloud_project_id
  name              = var.environment_name
  type              = var.environment_type
  dbt_version       = var.dbt_version
  use_custom_branch = var.use_custom_branch
  custom_branch     = var.custom_branch
}

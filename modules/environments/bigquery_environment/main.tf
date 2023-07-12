terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

resource "dbtcloud_bigquery_credential" "bigquery_environment_credential" {
  count = var.environment_type == "development" ? 0 : 1

  project_id  = var.dbt_cloud_project_id
  dataset     = var.bigquery_dataset
  num_threads = var.number_of_threads
}

resource "dbtcloud_environment" "bigquery_environment" {

  credential_id     = var.environment_type == "development" ? null : dbtcloud_bigquery_credential.bigquery_environment_credential[0].credential_id
  project_id        = var.dbt_cloud_project_id
  name              = var.environment_name
  type              = var.environment_type
  dbt_version       = var.dbt_version
  use_custom_branch = var.use_custom_branch
  custom_branch     = var.custom_branch
}

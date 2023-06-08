terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

resource "dbt_cloud_bigquery_credential" "bigquery_environment_credential" {
  count = var.environment_type == "development" ? 0 : 1

  project_id  = var.dbt_cloud_project_id
  dataset     = var.bigquery_dataset
  num_threads = var.number_of_threads
}

resource "dbt_cloud_environment" "bigquery_environment" {

  credential_id     = var.environment_type == "development" ? null : dbt_cloud_bigquery_credential.bigquery_environment_credential[0].credential_id
  project_id        = var.dbt_cloud_project_id
  name              = var.environment_name
  type              = var.environment_type
  dbt_version       = var.dbt_version
  use_custom_branch = var.use_custom_branch
  custom_branch     = var.custom_branch
}

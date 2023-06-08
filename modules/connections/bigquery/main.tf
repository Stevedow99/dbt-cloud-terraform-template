terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

resource "dbt_cloud_bigquery_connection" "bigquery_credential" {
  project_id                  = var.dbt_cloud_project_id
  name                        = var.bigquery_connection_name
  type                        = "bigquery"
  is_active                   = true
  auth_provider_x509_cert_url = var.auth_provider_x509_cert_url
  auth_uri                    = var.auth_uri
  client_email                = var.client_email
  client_id                   = var.client_id
  client_x509_cert_url        = var.client_x509_cert_url
  gcp_project_id              = var.gcp_project_id
  private_key                 = var.private_key
  private_key_id              = var.private_key_id
  timeout_seconds             = var.timeout_seconds
  token_uri                   = var.token_uri
  dataproc_cluster_name       = var.dataproc_cluster_name
  dataproc_region             = var.dataproc_region
  gcs_bucket                  = var.gcs_bucket
  location                    = var.location
  maximum_bytes_billed        = var.maximum_bytes_billed
  retries                     = var.retries

}

resource "dbt_cloud_project_connection" "bigquery_connection" {
  connection_id = dbt_cloud_bigquery_connection.bigquery_credential.connection_id
  project_id    = var.dbt_cloud_project_id
}

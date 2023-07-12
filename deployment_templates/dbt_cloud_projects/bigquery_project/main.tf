terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

# define the provider
provider "dbtcloud" {
  account_id = var.dbt_cloud_account_id
  token      = var.dbt_cloud_token
  host_url   = "https://cloud.getdbt.com/api"
}

# build out the project
resource "dbtcloud_project" "dbtcloud_bigquery_project" {
  name                     = var.dbt_cloud_project_name
  dbt_project_subdirectory = var.dbt_project_subdirectory
}


# set up the connection to bigquery
module "bigquery_connection" {
  source = "../../../modules/connections/bigquery"

  dbt_cloud_project_id        = dbtcloud_project.dbtcloud_bigquery_project.id
  bigquery_connection_name    = var.bigquery_connection_name
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

# set up the connection to github
module "github_connection" {
  source = "../../../modules/connections/github_app_repo"

  dbt_cloud_project_id   = dbtcloud_project.dbtcloud_bigquery_project.id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id
}


# setting up all dbt cloud environments
module "bigquery_environments" {
  source = "../../../modules/environments/bigquery_environment"
  count  = length(var.environments)

  dbt_cloud_project_id = dbtcloud_project.dbtcloud_bigquery_project.id
  environment_name     = var.environments[count.index].environment_name
  environment_type     = var.environments[count.index].environment_type
  dbt_version          = var.environments[count.index].dbt_version
  bigquery_dataset     = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].bigquery_dataset
  environment_schema   = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].environment_schema
  number_of_threads    = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].number_of_threads
  use_custom_branch    = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].use_custom_branch
  custom_branch        = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].custom_branch
}


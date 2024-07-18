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
resource "dbtcloud_project" "dbtcloud_databricks_project" {
  name                     = var.dbt_cloud_project_name
  dbt_project_subdirectory = var.dbt_project_subdirectory
}


# set up the connection to databricks
module "databricks_connection" {
  source = "../../../modules/connections/databricks"

  dbt_cloud_project_id       = dbtcloud_project.dbtcloud_databricks_project.id
  databricks_connection_name = var.databricks_connection_name
  databricks_host_name       = var.databricks_host_name
  databricks_http_path       = var.databricks_http_path
  databricks_default_catalog = var.databricks_default_catalog
}

# set up the connection to github
module "github_connection" {
  source = "../../../modules/connections/github_app_repo"

  dbt_cloud_project_id   = dbtcloud_project.dbtcloud_databricks_project.id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id
}

# setting up all dbt cloud environments
module "databricks_environments" {
  source = "../../../modules/environments/databricks_environment"
  count  = length(var.environments)

  dbt_cloud_project_id       = dbtcloud_project.dbtcloud_databricks_project.id
  environment_name           = var.environments[count.index].environment_name
  environment_type           = var.environments[count.index].environment_type
  environment_schema         = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].environment_schema
  dbt_version                = var.environments[count.index].dbt_version
  # databricks_default_catalog = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].databricks_default_catalog
  databricks_adapter_id      = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].databricks_adapter_id
  databricks_token           = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].databricks_token
  environment_target_name    = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].environment_target_name
  number_of_threads          = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].number_of_threads
  use_custom_branch          = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].use_custom_branch
  custom_branch              = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].custom_branch
}

terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

# define the provider
provider "dbt" {
  account_id = var.dbt_cloud_account_id
  token      = var.dbt_cloud_token
  host_url   = "https://cloud.getdbt.com/api"
}

# build out the project
resource "dbt_cloud_project" "dbt_cloud_snowflake_project" {
  name                     = var.dbt_cloud_project_name
  dbt_project_subdirectory = var.dbt_project_subdirectory
}


# set up the connection to snowflake
module "snowflake_connection" {
  source = "../../../modules/connections/snowflake"

  dbt_cloud_project_id      = dbt_cloud_project.dbt_cloud_snowflake_project.id
  snowflake_connection_name = var.snowflake_connection_name
  account                   = var.snowflake_account
  database                  = var.default_snowflake_database
  warehouse                 = var.default_snowflake_warehouse
  default_role              = var.default_role
  allow_session_keep_alive  = var.allow_session_keep_alive
  allow_sso                 = var.allow_sso
  oauth_client_id           = var.oauth_client_id
  oauth_client_secret       = var.oauth_client_secret
}

# set up the connection to github
module "github_connection" {
  source = "../../../modules/connections/github_app_repo"

  dbt_cloud_project_id   = dbt_cloud_project.dbt_cloud_snowflake_project.id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id
}

# setting up all dbt cloud environments
module "snowflake_environments" {
  source = "../../../modules/environments/snowflake_environment"
  count  = length(var.environments)

  dbt_cloud_project_id             = dbt_cloud_project.dbt_cloud_snowflake_project.id
  environment_name                 = var.environments[count.index].environment_name
  environment_type                 = var.environments[count.index].environment_type
  dbt_version                      = var.environments[count.index].dbt_version
  snowflake_auth_type              = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_auth_type
  database                         = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].database
  warehouse                        = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].warehouse
  snowflake_user                   = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_user
  environment_schema               = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].environment_schema
  snowflake_role                   = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_role
  snowflake_password               = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_password
  snowflake_private_key            = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_private_key
  snowflake_private_key_passphrase = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].snowflake_private_key_passphrase
  number_of_threads                = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].number_of_threads
  use_custom_branch                = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].use_custom_branch
  custom_branch                    = var.environments[count.index].environment_type == "development" ? null : var.environments[count.index].custom_branch
}

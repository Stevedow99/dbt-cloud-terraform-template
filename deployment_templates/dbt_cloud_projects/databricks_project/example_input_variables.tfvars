# -----------------------------------------------------
#  account level info 
#  NOTE it's recommend you pass these a env vars or tf vault secerts and not define them in the tfvars file
# -----------------------------------------------------

#  dbt_cloud_account_id   = 123456
# if using enviroment varibles for this you can do: export TF_VAR_dbt_cloud_account_id=123456
#  dbt_cloud_token        = "a dbt cloud service token"
# if using enviroment varibles for this you can do: export TF_VAR_dbt_cloud_token= atoken

# -----------------------------------------------------
# project info
# -----------------------------------------------------
dbt_cloud_project_name = "a_dbtcloud_databricks_project"

# -----------------------------------------------------
# snowflake connection info
# -----------------------------------------------------
# Required
databricks_connection_name = "my-databricks-connection"
databricks_host_name       = "my-databricks-host.cloud.databricks.com"
databricks_http_path       = "/my/path"

# Optional variables
databricks_default_catalog = "my-default-catalog"


# -----------------------------------------------------
# github connection info
# -----------------------------------------------------
remote_url             = "git@github.com:something/dbtcloud_repo.git"
github_installation_id = 28133080


# -----------------------------------------------------
# enviroment info
# -----------------------------------------------------
environments = [
  {
    environment_name = "IDE Development Two"
    environment_type = "development"
    dbt_version      = "1.5.0-latest"
  },
  {
    environment_name           = "QA environment"
    environment_type           = "deployment"
    dbt_version                = "1.5.0-latest"
    environment_schema         = "schema-1"
    # databricks_default_catalog = "catalog-1"
    databricks_adapter_id      = 123
    databricks_token           = "my-databricks-token"
    environment_target_name    = "target-name-1"
    number_of_threads          = 4
  },
  {
    environment_name           = "Production"
    environment_type           = "deployment"
    dbt_version                = "1.5.0-latest"
    environment_schema         = "schema-1"
    # databricks_default_catalog = "catalog-1"
    databricks_adapter_id      = 123
    databricks_token           = "my-databricks-token"
    environment_target_name    = "target-name-1"
    number_of_threads          = 4
    use_custom_branch          = true
    custom_branch              = "my-branch"
  }
]

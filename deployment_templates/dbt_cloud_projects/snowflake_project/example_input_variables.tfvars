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
dbt_cloud_project_name = "a_dbtcloud_snowflake_project"

# -----------------------------------------------------
# snowflake connection info
# -----------------------------------------------------
snowflake_connection_name   = "my_snowflake_connection"
snowflake_account           = "my_snowflake_account"
default_snowflake_database  = "MY_DEFAULT_SNOWFLAKE_DATABASE"
default_snowflake_warehouse = "MY_DEFAULT_WAREHOUSE"

# some other optional inputs
# default_role                 = "my_default_role"
# allow_session_keep_alive     = true
# allow_sso                    = false
# oauth_client_id              = "my_oauth_client_id"
# oauth_client_secret          = "my_oauth_client_secret"


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
    environment_name    = "IDE Development Two"
    environment_type    = "development"
    dbt_version         = "1.5.0-latest"
  },
  {
    environment_name    = "QA environment"
    environment_type    = "deployment"
    snowflake_auth_type = "password"
    database            = "A_SNOWFLAKE_DATABASE"
    warehouse           = "A_SNOWFLAKE_WAREHOUSE"
    snowflake_user      = "A_SNOWFLAKE_USER"
    environment_schema  = "qa_schema"
    dbt_version         = "1.5.0-latest"
    snowflake_role      = "A_SNOWFLAKE_ROLE"
    snowflake_password  = "auserspassword"
  },
  {
    environment_name    = "PROD ENV"
    environment_type    = "deployment"
    snowflake_auth_type = "password"
    database            = "B_SNOWFLAKE_DATABASE"
    warehouse           = "B_SNOWFLAKE_WAREHOUSE"
    snowflake_user      = "B_SNOWFLAKE_USER"
    environment_schema  = "prod_schema"
    dbt_version         = "1.5.0-latest"
    snowflake_role      = "B_SNOWFLAKE_ROLE"
    snowflake_password  = "buserspassword"
    number_of_threads   = 16
    use_custom_branch   = true
    custom_branch       = "branch2"
  }
]

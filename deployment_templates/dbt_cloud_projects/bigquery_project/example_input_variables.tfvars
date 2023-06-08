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
dbt_cloud_project_name = "a_dbt_cloud_bigquery_project"

# -----------------------------------------------------
# bigquery connection info
# -----------------------------------------------------
bigquery_connection_name    = "my_bigquery_connection"
auth_provider_x509_cert_url = "https://www.example.com/certs/x509_cert_url"
auth_uri                    = "https://www.example.com/auth_uri"
client_email                = "client@email.com"
client_id                   = "client-id"
client_x509_cert_url        = "https://www.example.com/certs/client_x509_cert_url"
gcp_project_id              = "my-gcp-project-id"
private_key                 = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANB...-----END PRIVATE KEY-----\n"
private_key_id              = "my-private-key-id"
timeout_seconds             = 300
token_uri                   = "https://www.example.com/token_uri"
dataproc_cluster_name       = "my-dataproc-cluster-name"
dataproc_region             = "us-central1"
gcs_bucket                  = "gs://my-bucket"
location                    = "US"
maximum_bytes_billed        = 1000000000
retries                     = 3


# -----------------------------------------------------
# github connection info
# -----------------------------------------------------
remote_url             = "git@github.com:something/dbt_cloud_repo.git"
github_installation_id = 28133080


# -----------------------------------------------------
# enviroment info
# -----------------------------------------------------
environments = [
  {
    environment_name = "IDE Development Environment"
    environment_type = "development"
    dbt_version      = "1.0.0"
  },
  {
    environment_name    = "QA environment"
    environment_type    = "deployment"
    snowflake_auth_type = "password"
    bigquery_dataset    = "A_BQ_QA_DATASET"
    environment_schema  = "qa_schema"
    dbt_version         = "1.0.0"
  },
  {
    environment_name   = "prod environment"
    environment_type   = "deployment"
    bigquery_dataset   = "A_BQ_PRODUCTION_DATASET"
    environment_schema = "prod_schema"
    dbt_version        = "1.0.0"
    number_of_threads  = 16
    use_custom_branch  = true
    custom_branch      = "branch2"
  }
]

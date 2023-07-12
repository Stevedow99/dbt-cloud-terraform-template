<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dbtcloud"></a> [dbtcloud](#requirement\_dbtcloud) | 0.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dbtcloud"></a> [dbtcloud](#provider\_dbtcloud) | 0.2.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_connection"></a> [github\_connection](#module\_github\_connection) | ../../../modules/connections/github_app_repo | n/a |
| <a name="module_snowflake_connection"></a> [snowflake\_connection](#module\_snowflake\_connection) | ../../../modules/connections/snowflake | n/a |
| <a name="module_snowflake_environments"></a> [snowflake\_environments](#module\_snowflake\_environments) | ../../../modules/environments/snowflake_environment | n/a |

## Resources

| Name | Type |
|------|------|
| [dbtcloud_project.dbtcloud_snowflake_project](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_session_keep_alive"></a> [allow\_session\_keep\_alive](#input\_allow\_session\_keep\_alive) | Whether or not the connection should allow client session keep alive | `bool` | `null` | no |
| <a name="input_allow_sso"></a> [allow\_sso](#input\_allow\_sso) | Whether or not the connection should allow SSO pass through login to Snowflake | `bool` | `null` | no |
| <a name="input_dbt_cloud_account_id"></a> [dbt\_cloud\_account\_id](#input\_dbt\_cloud\_account\_id) | The unique numeric id tied to the dbt Cloud account | `any` | n/a | yes |
| <a name="input_dbt_cloud_project_name"></a> [dbt\_cloud\_project\_name](#input\_dbt\_cloud\_project\_name) | The name of the dbt Cloud project | `string` | n/a | yes |
| <a name="input_dbt_cloud_token"></a> [dbt\_cloud\_token](#input\_dbt\_cloud\_token) | The service token terraform will use to appl changes to dbt Cloud | `any` | n/a | yes |
| <a name="input_dbt_project_subdirectory"></a> [dbt\_project\_subdirectory](#input\_dbt\_project\_subdirectory) | Optional - The name of the dbt project subdirectory if the dbt project is not at the root of the repository | `string` | `null` | no |
| <a name="input_default_role"></a> [default\_role](#input\_default\_role) | The default role name for the Snowflake connection | `string` | `null` | no |
| <a name="input_default_snowflake_database"></a> [default\_snowflake\_database](#input\_default\_snowflake\_database) | The default Snowflake database name for the connection | `string` | n/a | yes |
| <a name="input_default_snowflake_warehouse"></a> [default\_snowflake\_warehouse](#input\_default\_snowflake\_warehouse) | The default Snowflake warehouse name for the connection | `string` | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | List of environments to create in dbt Cloud | <pre>list(object({<br>    environment_name                 = string<br>    dbt_version                      = string<br>    environment_type                 = optional(string)<br>    snowflake_auth_type              = optional(string)<br>    database                         = optional(string)<br>    warehouse                        = optional(string)<br>    snowflake_user                   = optional(string)<br>    environment_schema               = optional(string)<br>    snowflake_role                   = optional(string)<br>    snowflake_auth_type              = optional(string)<br>    snowflake_password               = optional(string)<br>    snowflake_private_key            = optional(string)<br>    snowflake_private_key_passphrase = optional(string)<br>    number_of_threads                = optional(number, 4)<br>    use_custom_branch                = optional(bool)<br>    custom_branch                    = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_github_installation_id"></a> [github\_installation\_id](#input\_github\_installation\_id) | The github app installation id for the connection to dbt Cloud (you need to make the github app integration in account settings in the Cloud UI) to get this value login to dbt Cloud then paste this in the browser 'https://<dbt\_cloud\_url>/api/v2/integrations/github/installations/' grab the id for the github connection you would like to use | `number` | n/a | yes |
| <a name="input_oauth_client_id"></a> [oauth\_client\_id](#input\_oauth\_client\_id) | The Snowflake OAuth App client identifier | `string` | `null` | no |
| <a name="input_oauth_client_secret"></a> [oauth\_client\_secret](#input\_oauth\_client\_secret) | The Snowflake OAuth App client secret | `string` | `null` | no |
| <a name="input_remote_url"></a> [remote\_url](#input\_remote\_url) | Git URL for the GitHub repository in the format of 'git://github.com/<github\_org>/<github\_repo>.git' | `string` | n/a | yes |
| <a name="input_snowflake_account"></a> [snowflake\_account](#input\_snowflake\_account) | The Snowflake account name for the connection | `string` | n/a | yes |
| <a name="input_snowflake_connection_name"></a> [snowflake\_connection\_name](#input\_snowflake\_connection\_name) | The name of the connection to Snowflake in dbt Cloud | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
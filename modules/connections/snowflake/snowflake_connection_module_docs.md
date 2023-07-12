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

No modules.

## Resources

| Name | Type |
|------|------|
| [dbtcloud_connection.snowflake_credential](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/connection) | resource |
| [dbtcloud_project_connection.snowflake_connection](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/project_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account"></a> [account](#input\_account) | The Snowflake account name for the connection | `string` | n/a | yes |
| <a name="input_allow_session_keep_alive"></a> [allow\_session\_keep\_alive](#input\_allow\_session\_keep\_alive) | Whether or not the connection should allow client session keep alive | `bool` | `null` | no |
| <a name="input_allow_sso"></a> [allow\_sso](#input\_allow\_sso) | Whether or not the connection should allow SSO pass through login to Snowflake | `bool` | `null` | no |
| <a name="input_database"></a> [database](#input\_database) | The default Snowflake database name for the connection | `string` | n/a | yes |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_default_role"></a> [default\_role](#input\_default\_role) | The default role name for the Snowflake connection | `string` | `null` | no |
| <a name="input_oauth_client_id"></a> [oauth\_client\_id](#input\_oauth\_client\_id) | The Snowflake OAuth App client identifier | `string` | `null` | no |
| <a name="input_oauth_client_secret"></a> [oauth\_client\_secret](#input\_oauth\_client\_secret) | The Snowflake OAuth App client secret | `string` | `null` | no |
| <a name="input_snowflake_connection_name"></a> [snowflake\_connection\_name](#input\_snowflake\_connection\_name) | The name of the connection to Snowflake in dbt Cloud | `string` | n/a | yes |
| <a name="input_warehouse"></a> [warehouse](#input\_warehouse) | The default Snowflake warehouse name for the connection | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
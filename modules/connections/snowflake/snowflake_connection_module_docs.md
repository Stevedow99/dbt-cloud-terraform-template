<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dbt"></a> [dbt](#requirement\_dbt) | 0.1.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dbt"></a> [dbt](#provider\_dbt) | 0.1.9 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dbt_cloud_connection.snowflake_credential](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_connection) | resource |
| [dbt_cloud_project_connection.snowflake_connection](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_project_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account"></a> [account](#input\_account) | The Snowflake account name for the connection | `string` | n/a | yes |
| <a name="input_database"></a> [database](#input\_database) | The default Snowflake database name for the connection | `string` | n/a | yes |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_snowflake_connection_name"></a> [snowflake\_connection\_name](#input\_snowflake\_connection\_name) | The name of the connection to Snowflake in dbt Cloud | `string` | n/a | yes |
| <a name="input_warehouse"></a> [warehouse](#input\_warehouse) | The default Snowflake warehouse name for the connection | `string` | n/a | yes |
| <a name="input_allow_session_keep_alive"></a> [allow\_session\_keep\_alive](#input\_allow\_session\_keep\_alive) | Whether or not the connection should allow client session keep alive | `bool` | `null` | no |
| <a name="input_allow_sso"></a> [allow\_sso](#input\_allow\_sso) | Whether or not the connection should allow SSO pass through login to Snowflake | `bool` | `null` | no |
| <a name="input_default_role"></a> [default\_role](#input\_default\_role) | The default role name for the Snowflake connection | `string` | `null` | no |
| <a name="input_oauth_client_id"></a> [oauth\_client\_id](#input\_oauth\_client\_id) | The Snowflake OAuth App client identifier | `string` | `null` | no |
| <a name="input_oauth_client_secret"></a> [oauth\_client\_secret](#input\_oauth\_client\_secret) | The Snowflake OAuth App client secret | `string` | `null` | no |

## Outputs

No outputs.

## Example of using this module 
``` hcl

# set up the connection to snowflake
module "snowflake_connection" {
  source = "../../../modules/connections/snowflake"

  dbt_cloud_project_id      = dbt_cloud_project.dbt_cloud_snowflake_project.id
  snowflake_connection_name = var.snowflake_connection_name
  account                   = var.snowflake_account
  database                  = var.default_snowflake_database
  warehouse                 = var.default_snowflake_warehouse
}
``` 


<!-- END_TF_DOCS -->
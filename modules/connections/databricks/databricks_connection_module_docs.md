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
| [dbtcloud_connection.databricks_credential](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/connection) | resource |
| [dbtcloud_project_connection.snowflake_connection](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/project_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_adapter_id"></a> [databricks\_adapter\_id](#input\_databricks\_adapter\_id) | The adapter id for the connection to Databricks in dbt Cloud | `string` | n/a | yes |
| <a name="input_databricks_connection_name"></a> [databricks\_connection\_name](#input\_databricks\_connection\_name) | The name of the connection to Databricks in dbt Cloud | `string` | n/a | yes |
| <a name="input_databricks_default_catalog"></a> [databricks\_default\_catalog](#input\_databricks\_default\_catalog) | The default Databricks catalog name for the connection | `string` | `null` | no |
| <a name="input_databricks_default_schema"></a> [databricks\_default\_schema](#input\_databricks\_default\_schema) | The default schema to use for the connection to Databricks in dbt Cloud | `string` | n/a | yes |
| <a name="input_databricks_target_name"></a> [databricks\_target\_name](#input\_databricks\_target\_name) | The target name for the connection to Databricks in dbt Cloud | `string` | `null` | no |
| <a name="input_databricks_token"></a> [databricks\_token](#input\_databricks\_token) | The token to use for the connection to Databricks in dbt Cloud | `string` | n/a | yes |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
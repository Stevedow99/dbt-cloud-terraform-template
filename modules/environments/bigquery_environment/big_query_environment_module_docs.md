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
| [dbtcloud_bigquery_credential.bigquery_environment_credential](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/bigquery_credential) | resource |
| [dbtcloud_environment.bigquery_environment](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/environment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bigquery_dataset"></a> [bigquery\_dataset](#input\_bigquery\_dataset) | The default BigQuery database to use for the connection | `string` | n/a | yes |
| <a name="input_custom_branch"></a> [custom\_branch](#input\_custom\_branch) | The name of the custom branch if using one | `string` | `null` | no |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_dbt_version"></a> [dbt\_version](#input\_dbt\_version) | The dbt version for the environment in dbt Cloud | `string` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | The name of the environment to in dbt Cloud | `string` | n/a | yes |
| <a name="input_environment_schema"></a> [environment\_schema](#input\_environment\_schema) | The default schema to use for the environment | `string` | n/a | yes |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | The type of environment in dbt Cloud (must be either development or deployment) | `string` | `"deployment"` | no |
| <a name="input_number_of_threads"></a> [number\_of\_threads](#input\_number\_of\_threads) | The number of threads to use for the Snowflake connection | `number` | `4` | no |
| <a name="input_use_custom_branch"></a> [use\_custom\_branch](#input\_use\_custom\_branch) | Whether to use a custom git branch in the dbt Cloud environment | `bool` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
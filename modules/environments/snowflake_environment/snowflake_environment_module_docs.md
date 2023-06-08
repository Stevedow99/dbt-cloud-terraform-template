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
| [dbt_cloud_environment.snowflake_environment](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_environment) | resource |
| [dbt_cloud_snowflake_credential.snowflake_environment_credential](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_snowflake_credential) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database"></a> [database](#input\_database) | The default Snowflake database name for the connection | `string` | n/a | yes |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_dbt_version"></a> [dbt\_version](#input\_dbt\_version) | The dbt version for the environment in dbt Cloud | `string` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | The name of the environment to in dbt Cloud | `string` | n/a | yes |
| <a name="input_environment_schema"></a> [environment\_schema](#input\_environment\_schema) | The default schema to use for the environment | `string` | n/a | yes |
| <a name="input_snowflake_user"></a> [snowflake\_user](#input\_snowflake\_user) | The Snowflake user name for the connection | `string` | n/a | yes |
| <a name="input_warehouse"></a> [warehouse](#input\_warehouse) | The default Snowflake warehouse name for the connection | `string` | n/a | yes |
| <a name="input_custom_branch"></a> [custom\_branch](#input\_custom\_branch) | The name of the custom branch if using one | `string` | `null` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | The type of environment in dbt Cloud (must be either development or deployment) | `string` | `"deployment"` | no |
| <a name="input_number_of_threads"></a> [number\_of\_threads](#input\_number\_of\_threads) | The number of threads to use for the Snowflake connection | `number` | `4` | no |
| <a name="input_snowflake_auth_type"></a> [snowflake\_auth\_type](#input\_snowflake\_auth\_type) | The connection method for Snowflake ('password' or 'keypair') | `string` | `"password"` | no |
| <a name="input_snowflake_password"></a> [snowflake\_password](#input\_snowflake\_password) | Password for Snowflake | `string` | `null` | no |
| <a name="input_snowflake_private_key"></a> [snowflake\_private\_key](#input\_snowflake\_private\_key) | Private key for Snowflake | `string` | `null` | no |
| <a name="input_snowflake_private_key_passphrase"></a> [snowflake\_private\_key\_passphrase](#input\_snowflake\_private\_key\_passphrase) | Private key passphrase for Snowflake | `string` | `null` | no |
| <a name="input_snowflake_role"></a> [snowflake\_role](#input\_snowflake\_role) | The snowflake role name for the Snowflake connection | `string` | `null` | no |
| <a name="input_use_custom_branch"></a> [use\_custom\_branch](#input\_use\_custom\_branch) | Whether to use a custom git branch in the dbt Cloud environment | `bool` | `null` | no |

## Outputs

No outputs.

## Example of using this module 
``` hcl
# setting up all dbt cloud environments
module "snowflake_environments" {
  source = "../../../modules/environments/snowflake_environment"
  count  = length(var.environments)

  dbt_cloud_project_id             = dbt_cloud_project.dbt_cloud_snowflake_project.id
  environment_name                 = var.environment_name
  environment_type                 = var.environment_type
  dbt_version                      = var.dbt_version
  snowflake_auth_type              = var.snowflake_auth_type
  database                         = var.database
  warehouse                        = var.warehouse
  snowflake_user                   = var.snowflake_user
  environment_schema               = var.environment_schema
  snowflake_role                   = var.snowflake_role
  snowflake_password               = var.snowflake_password
  snowflake_private_key            = var.snowflake_private_key
  snowflake_private_key_passphrase = var.snowflake_private_key_passphrase
  number_of_threads                = var.number_of_threads
  use_custom_branch                = var.use_custom_branch
  custom_branch                    = var.custom_branch
}
``` 
<!-- END_TF_DOCS -->
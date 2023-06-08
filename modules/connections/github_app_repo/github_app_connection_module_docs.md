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
| [dbt_cloud_project_repository.github_connection](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_project_repository) | resource |
| [dbt_cloud_repository.github_credential](https://registry.terraform.io/providers/GtheSheep/dbt-cloud/0.1.9/docs/resources/cloud_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_github_installation_id"></a> [github\_installation\_id](#input\_github\_installation\_id) | The github app installation id for the connection to dbt Cloud (you need to make the github app integration in account settings in the Cloud UI) to get this value login to dbt Cloud then paste this in the browser 'https://<dbt\_cloud\_url>/api/v2/integrations/github/installations/' grab the id for the github connection you would like to use | `number` | n/a | yes |
| <a name="input_remote_url"></a> [remote\_url](#input\_remote\_url) | Git URL for the GitHub repository in the format of 'git://github.com/<github\_org>/<github\_repo>.git' | `string` | n/a | yes |

## Outputs

No outputs.

## Example of using this module 
``` hcl
# set up the connection to github
module "github_connection" {
  source = "../../../modules/connections/github_app_repo"

  dbt_cloud_project_id   = dbt_cloud_project.dbt_cloud_bigquery_project.id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id
}
``` 


<!-- END_TF_DOCS -->
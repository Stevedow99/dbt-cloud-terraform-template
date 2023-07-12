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
| [dbtcloud_group.group](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dbt_cloud_account_id"></a> [dbt\_cloud\_account\_id](#input\_dbt\_cloud\_account\_id) | The unique numeric id tied to the dbt Cloud account | `any` | n/a | yes |
| <a name="input_dbt_cloud_token"></a> [dbt\_cloud\_token](#input\_dbt\_cloud\_token) | The service token terraform will use to appl changes to dbt Cloud | `any` | n/a | yes |
| <a name="input_dbtcloud_groups"></a> [dbtcloud\_groups](#input\_dbtcloud\_groups) | A list of RBAC permission groups to create | <pre>list(object({<br>    name = string<br>    permissions = list(object({<br>      permission_set     = string<br>      project_id         = optional(number)<br>      all_projects       = optional(bool, false)<br>      assign_by_default  = optional(bool, false)<br>      sso_mapping_groups = optional(list(string))<br>    }))<br><br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
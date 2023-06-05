terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

# define the provider
provider "dbt" {
  account_id = var.dbt_cloud_account_id
  token      = var.dbt_cloud_token
  host_url   = "https://cloud.getdbt.com/api"
}


# build the project
resource "dbt_cloud_project" "project_base_name" {
    name = var.dbt_cloud_project_name
}

# build all of the access groups
resource "dbt_cloud_group" "group" {

  for_each = { for i, group in var.dbt_cloud_groups : i => group }
  
  name = each.value.name

  dynamic "group_permissions" {

    for_each = each.value.permissions

    content {

      permission_set = group_permissions.value.permission_set

      all_projects = group_permissions.value.all_projects
      # The line below checks if 'all_projects' is true. If it is, then 'project_id' is set to null.
      # If 'all_projects' is false, 'project_id' is set to a project id.
      project_id = group_permissions.value.all_projects ? null : dbt_cloud_project.project_base_name.id

    }
  }
}
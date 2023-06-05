variable "dbt_cloud_account_id" {
  description = "The unique numeric id tied to the dbt Cloud account"
}

variable "dbt_cloud_token" {
  description = "The service token terraform will use to appl changes to dbt Cloud"
}

variable "dbt_cloud_project_name" {
  description = "The name of the dbt Cloud project"
}


variable "dbt_cloud_groups" {
  description = "A list of RBAC permission groups to create"
  type = list(object({
    name          = string
    permissions   = list(object({
      permission_set = string
      all_projects   = bool
    }))
#    assign_by_default = optional(bool, false)
#    sso_mapping_groups = optional(list())
  }))

   # setting some validation to make sure that the given permission set is a valid value
    validation {
        condition     = alltrue([
        for group in var.dbt_cloud_groups : 
            alltrue([
            for permission in group.permissions : 
                contains(["account_admin", "admin", "database_admin", "git_admin", "team_admin", "job_admin", "job_viewer", "analyst", "developer", "stakeholder", "readonly", "account_viewer", "project_creator"], permission.permission_set)
            ])
        ])
        error_message = "Each permission_set must be one of account_admin, admin, database_admin, git_admin, team_admin, job_admin, job_viewer, analyst, developer, stakeholder, readonly, account_viewer, project_creator."
    }
}



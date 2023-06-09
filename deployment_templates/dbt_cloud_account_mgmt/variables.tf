variable "dbt_cloud_account_id" {
  description = "The unique numeric id tied to the dbt Cloud account"
  sensitive   = true
}

variable "dbt_cloud_token" {
  description = "The service token terraform will use to appl changes to dbt Cloud"
  sensitive   = true
}

variable "dbtcloud_groups" {
  description = "A list of RBAC permission groups to create"
  type = list(object({
    name = string
    permissions = list(object({
      permission_set     = string
      project_id         = optional(number)
      all_projects       = optional(bool, false)
      assign_by_default  = optional(bool, false)
      sso_mapping_groups = optional(list(string))
    }))

  }))

  # setting some validation to make sure that the given permission set is a valid value
  validation {
    condition = alltrue([
      for group in var.dbtcloud_groups :
      alltrue([
        for permission in group.permissions :
        contains(["account_admin", "admin", "database_admin", "git_admin", "team_admin", "job_admin", "job_viewer", "analyst", "developer", "stakeholder", "readonly", "account_viewer", "project_creator"], permission.permission_set)
      ])
    ])
    error_message = "Each permission_set must be one of account_admin, admin, database_admin, git_admin, team_admin, job_admin, job_viewer, analyst, developer, stakeholder, readonly, account_viewer, project_creator."
  }
}



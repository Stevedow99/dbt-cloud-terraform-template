# project group information
dbt_cloud_groups = [
  {
    name = "System Devs"
    permissions = [
      {
        permission_set = "git_admin"
        all_projects   = true
      },
      {
        permission_set = "stakeholder"
        project_id     = 247729
      },
      {
        permission_set = "stakeholder"
        project_id     = 256231
      }
    ]
  },
  {
    name = "System Viewers"
    permissions = [
      {
        permission_set = "account_viewer"
        all_projects   = true
      }
    ]
  }
]

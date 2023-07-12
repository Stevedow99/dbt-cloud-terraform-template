# project group information
dbtcloud_groups = [
  {
    name = "System Devs"
    permissions = [
      {
        permission_set = "git_admin"
        all_projects   = true
      },
      {
        permission_set = "stakeholder"
        project_id     = 245412
      },
      {
        permission_set = "stakeholder"
        project_id     = 246640
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

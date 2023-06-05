
 # account level info
 dbt_cloud_account_id   = "<<param>>"
 dbt_cloud_token        = "<<param>>"

 # project info
 dbt_cloud_project_name = "marketing_analytics_project"

 # project group information
 dbt_cloud_groups = [
  {
    name = "System Devs"
    permissions = [
      {
        permission_set = "git_admin"
        all_projects = true
      },
      {
        permission_set = "stakeholder"
        all_projects = false
      }
    ]
  },
  {
    name = "System Viewers"
    permissions = [
      {
        permission_set = "account_viewer"
        all_projects = false
      }
    ]
  }
]
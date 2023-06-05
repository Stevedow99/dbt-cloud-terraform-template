
#  account level info -- NOTE it's recommend you pass these a env vars or tf vault secerts and not define them in the tfvars file
#  dbt_cloud_account_id   = 123456
#  dbt_cloud_token        = "a dbt cloud service token"

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
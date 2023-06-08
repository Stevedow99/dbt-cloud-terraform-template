# -------------------------------------------
# required varibles
# -------------------------------------------

variable "dbt_cloud_project_id" {
  description = "The dbt Cloud project ID to create the connection in"
  type        = number
}

variable "remote_url" {
  description = "Git URL for the GitHub repository in the format of 'git://github.com/<github_org>/<github_repo>.git' "
  type        = string
}

variable "github_installation_id" {
  description = "The github app installation id for the connection to dbt Cloud (you need to make the github app integration in account settings in the Cloud UI) to get this value login to dbt Cloud then paste this in the browser 'https://<dbt_cloud_url>/api/v2/integrations/github/installations/' grab the id for the github connection you would like to use"
  type        = number
}
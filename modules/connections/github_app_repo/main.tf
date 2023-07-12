terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.2"
    }
  }
}

# create the github connection credential
resource "dbtcloud_repository" "github_credential" {
  git_clone_strategy     = "github_app"
  project_id             = var.dbt_cloud_project_id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id

}

# associate the credential to the project
resource "dbtcloud_project_repository" "github_connection" {
  project_id    = var.dbt_cloud_project_id
  repository_id = dbtcloud_repository.github_credential.repository_id
}
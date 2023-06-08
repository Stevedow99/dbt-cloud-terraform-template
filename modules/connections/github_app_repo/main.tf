terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.9"
    }
  }
}

# create the github connection credential
resource "dbt_cloud_repository" "github_credential" {
  git_clone_strategy     = "github_app"
  project_id             = var.dbt_cloud_project_id
  remote_url             = var.remote_url
  github_installation_id = var.github_installation_id

}

# associate the credential to the project
resource "dbt_cloud_project_repository" "github_connection" {
  project_id    = var.dbt_cloud_project_id
  repository_id = dbt_cloud_repository.github_credential.repository_id
}
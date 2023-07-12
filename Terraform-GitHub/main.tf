//create a repository in github by terraform
//
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.30.1"
    }
  }
}

# Configure the GitHub Provider

provider "github" {
  token = var.github_token // authenticate github by token
}

resource "github_repository" "example" {
  name        = "Terrform-GitHub-Demo"
  description = "create a repository by terraform"

  visibility = "public"
}

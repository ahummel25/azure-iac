terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.1.2"
    }
  }
}

provider "azuredevops" {
  org_service_url       = var.org_service_url
  personal_access_token = var.personal_access_token
}

terraform {
  backend "azurerm" {}
}

resource "azuredevops_project" "personal_azure_project" {
  name               = "Personal Azure Project"
  work_item_template = "Basic"
}

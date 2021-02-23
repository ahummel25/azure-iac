terraform {
  backend "azurerm" {}
}

resource "azuread_user" "admin_user" {
  user_principal_name = "admin_user_master@ahummel25gmail.onmicrosoft.com"
  display_name        = "Admin User"
  mail_nickname       = "adminuser"
  password            = var.password
}

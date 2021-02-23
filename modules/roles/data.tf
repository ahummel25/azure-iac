data "azurerm_role_definition" "owner" {
  name = "Owner"
}

data "azurerm_subscription" "primary" {}

data "azuread_user" "admin_user_master" {
  user_principal_name = "admin_user_master@ahummel25gmail.onmicrosoft.com"
}

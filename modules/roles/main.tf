provider "azurerm" {
  features {}
}

provider "azuread" {}

terraform {
  backend "azurerm" {}
}

resource "azurerm_role_assignment" "owner_assignment" {
  scope              = data.azurerm_subscription.primary.id
  role_definition_id = "${data.azurerm_subscription.primary.id}${data.azurerm_role_definition.owner.id}"
  principal_id       = data.azuread_user.admin_user_master.object_id
}

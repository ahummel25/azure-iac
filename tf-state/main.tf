provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfstate_rg" {
  name     = "tf-state"
  location = var.location
}

resource "azurerm_storage_account" "tfstate_storage_acct" {
  name                     = "tfstatestorageacct"
  resource_group_name      = azurerm_resource_group.tfstate_rg.name
  location                 = azurerm_resource_group.tfstate_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate_storage_container" {
  name                  = "tf-state-storage-container"
  storage_account_name  = azurerm_storage_account.tfstate_storage_acct.name
  container_access_type = "private"
}

remote_state {
  backend = "azurerm"
  config = {
    key                  = "${path_relative_to_include()}/terraform.tfstate"
    resource_group_name  = "tf-state"
    storage_account_name = "tfstatestorageacct"
    container_name       = "tf-state-storage-container"
  }
}
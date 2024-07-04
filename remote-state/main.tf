resource "azurerm_resource_group" "res-0" {
  location = "eastus"
  name     = "tfstate"
}
resource "azurerm_key_vault" "res-1" {
  enable_rbac_authorization = true
  location                  = "eastus"
  name                      = "subsciption-id-dev"
  resource_group_name       = "tfstate"
  sku_name                  = "standard"
  tags = {
    Environment = "dev"
  }
  tenant_id = "f2633c0a-777e-41be-8f09-2a76fad51c13"
  depends_on = [
    azurerm_resource_group.res-0,
  ]
}
resource "azurerm_storage_account" "res-2" {
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  location                         = "eastus"
  name                             = "devtfstateaks"
  resource_group_name              = "tfstate"
  depends_on = [
    azurerm_resource_group.res-0,
  ]
}
resource "azurerm_storage_container" "res-4" {
  name                 = "tfstate"
  storage_account_name = "devtfstateaks"
}

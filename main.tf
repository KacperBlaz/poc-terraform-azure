resource "azurerm_resource_group" "this" {
  name     = "production"
  location = var.location
}

#module "vnet" {
#  source = "./modules/vnet"
#  location = var.location
#  environment = var.environment
#  resource_group_name = azurerm_resource_group.this.name
#  vnet_address_space = var.vnet_address_space
##  tags = var.tags
#  subnet_names = var.subnet_names
#  subnet_prefixes = var.subnet_prefixes
#
#
#
#
#}
#
#module "aks" {
#  source              = "Azure/aks/azurerm"
#  resource_group_name = azurerm_resource_group.this.name
#  node_pools = {
#
#  }
#  cluster_name                         = "aks"
#  cluster_log_analytics_workspace_name = "aks-log-analytics-workspace"
#  prefix                               = var.environment
#  role_based_access_control_enabled    = var.role_based_access_control_enabled
#  network_plugin                       = "azure"
#  network_policy                       = "calico"
#  load_balancer_sku                    = "standard"
#
#}
### GENERAL ###

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

#variable "tags" {
#  type = map(string)
#}
### VNET ###

variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_names" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}


### AKS ###

variable "role_based_access_control_enabled" {
  type = bool
}
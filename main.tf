# This tells the cloud we are using Azure
provider "azurerm" {
  features {}
}

# 1. Create a Resource Group (A folder for all our cloud stuff)
resource "azurerm_resource_group" "data_rg" {
  name     = "enterprise-data-resources"
  location = "West Europe"
}

# 2. Create a Storage Account (The "Data Lake")
resource "azurerm_storage_account" "data_lake" {
  name                     = "stenterpriseformatdl"
  resource_group_name      = azurerm_resource_group.data_rg.name
  location                 = azurerm_resource_group.data_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true # This makes it a "Data Lake" [cite: 16, 49]
}

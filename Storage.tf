terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "398fb2de-5985-4de2-8ab1-e2d2c45d9631"
}

resource "azurerm_resource_group" "rg" {
  name     = "CLOUDGBB-IAC-GHA2"
  location = "West Europe"
}

resource "azurerm_storage_account" "stor" {
  name                          = "cloudgbbghaiacstorage2"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  public_network_access_enabled = true
  account_tier                  = "Standard"
  account_replication_type      = "LRS"

  tags = {
    "mapping_tag" = "5ff7cef2-0405-4f6b-b0b7-31cfc5f41be2"
  }
}
resource "azurerm_storage_container" "con" {
  name                  = "iacstorage"
  storage_account_name  = azurerm_storage_account.stor.name
  container_access_type = "blob"
}

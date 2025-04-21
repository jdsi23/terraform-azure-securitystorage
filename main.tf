terraform {
  required_version = ">=1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.43.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.104.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "<9734ed68-621d-47ed-babd-269110dbacb1>"
}

provider "hcp" {
  # Configuration options
}

resource "azurerm_storage_account" "securestorage" {
  name                         = var.storage_account_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  account_tier                 = var.account_tier
  account_replication_type     = var.account_replication_type
  public_network_access_enabled = false
}

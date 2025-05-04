terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstateglobalkiru"    # Must be globally unique
    container_name        = "tfstatedatadev"               # Blob container to hold the state file
    key                   = "terraform.tfstate"     # Name of the state file
  }
}

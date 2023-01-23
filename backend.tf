provider "azurerm" {
  features {}
}
terraform {
    backend "azurerm" {
        resource_group_name  = var.resource_group
        storage_account_name = var.storage_account
        container_name       = var.storage_containername
        key                  = "terraform.tfstate"
    }

}


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "random_pet" "dns" {
  length    = 2
  separator = "-"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = random_pet.dns.id

  kubernetes_version  = var.kubernetes_version
  sku_tier            = "Standard"  # Changed from "Free" to "Standard"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }
}

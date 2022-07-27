resource "azurerm_resource_group" "demo" {
  name     = "demo-resources"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "demo" {
  name                = "demo-aks1"
  location            = azurerm_resource_group.demo.location
  resource_group_name = azurerm_resource_group.demo.name
  dns_prefix          = "demoaks1"

  default_node_pool {
    name       = "default".
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

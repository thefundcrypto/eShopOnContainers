resource "azurerm_kubernetes_cluster" "eshopakscluster" {
  name                = var.aksClusterName
  location            = var.mainrg.location
  resource_group_name = var.mainrg.name
  dns_prefix          = "eShopOCtada"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  tags = {
    Environment = "Test"
  }
  
  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  addon_profile {
    http_application_routing {
      enabled = true
    }

    oms_agent {
      enabled                    = true
      log_analytics_workspace_id = var.laworkspace.id
    }
  }
  
  role_based_access_control {
    enabled = true
  }
}
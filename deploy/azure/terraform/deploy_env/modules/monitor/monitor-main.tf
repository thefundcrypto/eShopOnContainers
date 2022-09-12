resource "azurerm_monitor_diagnostic_setting" "acrdiag" {
  name                           = "eshop-acr-eus-diag-setting"
  target_resource_id             = var.acr.id
  log_analytics_workspace_id     = var.laworkspace.id
  log_analytics_destination_type = "Dedicated"
  log {
    category = "ContainerRegistryRepositoryEvents"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
  log {
    category = "ContainerRegistryLoginEvents"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
  metric {
    category = "AllMetrics"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
}

resource "azurerm_monitor_diagnostic_setting" "aksdiag" {
  name                           = "eshop-aks-eus-diag-setting"
  target_resource_id             = var.eshopakscluster.id
  log_analytics_workspace_id     = var.laworkspace.id
  log_analytics_destination_type = "Dedicated"
  log {
    category = "kube-apiserver"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "kube-audit"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "cluster-autoscaler"
    enabled  = false
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "kube-scheduler"
    enabled  = false
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "kube-controller-manager"
    enabled  = false
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "kube-apiserver"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
}
resource "azurerm_log_analytics_workspace" "laworkspace" {
  name                = "acctest-01"
  location            = var.mainrg.location
  resource_group_name = var.mainrg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_log_analytics_solution" "aksinsights" {
  solution_name         = "ContainerInsights"
  location              = azurerm_log_analytics_workspace.laworkspace.location
  resource_group_name   = var.mainrg.name
  workspace_resource_id = azurerm_log_analytics_workspace.laworkspace.id
  workspace_name        = azurerm_log_analytics_workspace.laworkspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
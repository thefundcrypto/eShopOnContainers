resource "azurerm_container_registry" "acr" {
    name                = join("", [var.containerRegistryName, var.acrid])
    resource_group_name = var.mainrg.name
    location            = var.mainrg.location
    sku                 = "Standard"
    admin_enabled       = true
}

resource "azurerm_role_assignment" "acrpull_role" {
  scope                            = azurerm_container_registry.acr.id
  role_definition_name             = "AcrPull"
  principal_id                     = var.aks_principal.id
  skip_service_principal_aad_check = true
}
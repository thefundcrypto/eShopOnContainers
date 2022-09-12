resource "azurerm_application_insights" "appinsights" {
  name                = "eshop-eus-appinsights"
  location            = var.mainrg.location
  resource_group_name = var.mainrg.name
  application_type    = "web"
}
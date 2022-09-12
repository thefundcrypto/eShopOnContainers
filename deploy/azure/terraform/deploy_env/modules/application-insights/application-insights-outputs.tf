output "appinsights" {
  value = azurerm_application_insights.appinsights
  sensitive = true
}
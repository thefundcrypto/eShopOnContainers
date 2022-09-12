output "client_certificate" {
  value     = module.aks.eshopakscluster.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value     = module.aks.eshopakscluster.kube_config_raw
  sensitive = true
}

output "instrumentation_key" {
  value = module.application_insights.appinsights.instrumentation_key
  sensitive = true
}

output "app_id" {
  value = module.application_insights.appinsights.app_id
  sensitive = true
}
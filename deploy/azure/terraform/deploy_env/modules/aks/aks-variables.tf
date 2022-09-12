variable "mainrg" {
    description = "resource group to apply infrastructure changes to"
}

variable "aksClusterName" {
  type        = string
  default     = "eShop-eus-demo-aks"
  description = "aks cluster name"
}

variable "client_id" {
  type = string
  description = "contains the Client Id for service principal"
  default   = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "client_secret" { 
  type = string
  description = "contains the Client Secret for service principal"
  default   = "XXXXXXXXXXXXXXXXXXXXXXXX"
}


variable "laworkspace" {
    description = "log analytics workspace"
}


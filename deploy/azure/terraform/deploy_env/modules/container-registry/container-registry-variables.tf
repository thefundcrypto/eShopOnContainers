

variable "mainrg" {
    description = "resource group to apply infrastructure changes to"
}

variable "containerRegistryName" {
    type        = string
    default     = "eShopeusdemoacr"
    description = "Container Registry Name"
}

variable "acrid" {
    type        = string
    default     = "XXXXXXXX"
    description = "unique id to appened to the registry name"
}

variable "aks_principal" {
    description = "azure service principal for aks"
}



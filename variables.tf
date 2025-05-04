variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "westus"
}

variable "kubernetes_version" {
  type        = string
  description = "AKS Kubernetes version"
  default     = "1.29.2"
}
variable "kubernetes_cluster_name" {
  type        = string
  description = "Name of the Kubernetes cluster"
  default     = "verito-aks-cluster"
  
}
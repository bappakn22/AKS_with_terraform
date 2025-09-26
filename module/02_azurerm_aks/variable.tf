variable "aks_name" {
 type = string 
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "node_pool_name" {
  
}

variable "vm_size" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "network_plugin" {
  type = string
}

variable "network_policy" {
  type = string
}
module "rgs" {
    source = "../module/01_azurerm_resource_group"
  resource_group_name = local.my_rgs
  location = local.location
}

module "aks" {
  depends_on = [ module.rgs ]
    source = "../module/02_azurerm_aks"
    aks_name = "ak8cluster"
    location = local.location
    resource_group_name = local.my_rgs
    node_pool_name = "aksnodepool"
    vm_size = "standard_a2_v2"
    dns_prefix = "myaks"
  node_count = "1"
  kubernetes_version = "1.32.7"
  network_plugin = "kubenet"
  network_policy = "calico"
}
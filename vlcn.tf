# code: language=Terraform tabSize=2


module "vlcn-test" {
  # Meta
  source                = "../../modules/vsphere_linux_cinit_netplan"
  name                  = "vlcn-test"
  hostname              = "vlcn-test"
  # General
  resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
  datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
  vm_folder             = "_root/DATI : ICT"
  guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
  template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
  # Network
  network_id            = data.vsphere_network.devops.id
  network_iface         = "ens192"
  network_addr          = "172.29.252.72"
  network_mask          = "24"
  network_gw_addr       = "172.29.252.1"
  network_ns_addr       = "172.29.245.1"
}

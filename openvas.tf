# code: language=Terraform tabSize=2


module "openvas-01" {
  # Meta
  source                = "../../modules/vsphere_linux_cinit_netplan"
  name                  = "openvas-01"
  hostname              = "openvas-01"
  # General
  resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
  datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
  vm_folder             = "_root/DATI : ICT/OpenVAS"
  guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
  template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
  # Network
  network_id            = data.vsphere_network.devops.id
  network_iface         = "ens192"
  network_addr          = "172.29.252.90"
  network_mask          = "24"
  network_gw_addr       = "172.29.252.1"
  network_ns_addr       = "172.29.245.1"
  # Hardware
  num_cpus              = 8
  memory                = 8192
  disk_system_size      = 512
}

# module "openvas-gvm-01" {
#   # Meta
#   source                = "../../modules/vsphere_linux_cinit_netplan"
#   name                  = "openvas-gvm-01"
#   hostname              = "openvas-gvm-01.ict.ptech.lu"
#   # General
#   resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
#   datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
#   vm_folder             = "_root/DATI : ICT/OpenVAS"
#   guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
#   template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
#   # Network
#   network_id            = data.vsphere_network.devops.id
#   network_iface         = "ens192"
#   network_addr          = "172.29.252.90"
#   network_mask          = "24"
#   network_gw_addr       = "172.29.252.1"
#   network_ns_addr       = "172.29.245.1"
#   # Hardware
#   num_cpus              = 8
#   memory                = 8192
#   disk_system_size      = 512
# }

# module "openvas-scanner-01" {
#   # Meta
#   source                = "../../modules/vsphere_linux_cinit_netplan"
#   name                  = "openvas-scanner-01"
#   hostname              = "openvas-scanner-01"
#   # General
#   resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
#   datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
#   vm_folder             = "_root/DATI : ICT/OpenVAS"
#   guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
#   template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
#   # Network
#   network_id            = data.vsphere_network.devops.id
#   network_iface         = "ens192"
#   network_addr          = "172.29.252.91"
#   network_mask          = "24"
#   network_gw_addr       = "172.29.252.1"
#   network_ns_addr       = "172.29.245.1"
#   # Hardware
#   num_cpus              = 4
#   memory                = 4096
#   disk_system_size      = 256
# }

# module "openvas-scanner-02" {
#   # Meta
#   source                = "../../modules/vsphere_linux_cinit_netplan"
#   name                  = "openvas-scanner-02"
#   hostname              = "openvas-scanner-02"
#   # General
#   resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
#   datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
#   vm_folder             = "_root/DATI : ICT/OpenVAS"
#   guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
#   template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
#   # Network
#   network_id            = data.vsphere_network.devops.id
#   network_iface         = "ens192"
#   network_addr          = "172.29.252.93"
#   network_mask          = "24"
#   network_gw_addr       = "172.29.252.1"
#   network_ns_addr       = "172.29.245.1"
#   # Hardware
#   num_cpus              = 4
#   memory                = 4096
#   disk_system_size      = 256
# }

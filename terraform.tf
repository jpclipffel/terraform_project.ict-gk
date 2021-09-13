# code language=Terraform tabSize=2
#
# Shared Terraform infrastructure


module "ict-terraform" {
  # Meta
  source                = "../../modules/vsphere_linux_cinit_netplan"
  name                  = "terraform-01"
  hostname              = "terraform-01.ict.ptech.lu"
  # General
  resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
  datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
  vm_folder             = "_root/DATI : ICT/Terraform"
  guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
  template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
  # Network
  network_id            = data.vsphere_network.devops.id
  network_iface         = "ens192"
  network_addr          = "172.29.252.80"
  network_mask          = "24"
  network_gw_addr       = "172.29.252.1"
  network_ns_addr       = "172.29.245.1"
  # Hardware
  num_cpus              = 4
  memory                = 4096
  disk_system_size      = 256
}

# code: language=Terraform tabSize=2


module "bitwarden-test-primary" {
  # Meta
  source                = "../../modules/bitwarden"
  name                  = "bitwarden-test-primary"
  hostname              = "bitwarden-test-primary.ict.ptech.lu"
  # General
  resource_pool_id      = data.vsphere_resource_pool.kirchberg_low.id
  datastore_cluster_id  = data.vsphere_datastore_cluster.default.id
  vm_folder             = "_root/DATI : ICT/Bitwarden"
  num_cpus              = 4
  memory                = 4096
  guest_id              = data.vsphere_virtual_machine.template_ubuntu.guest_id
  template_uuid         = data.vsphere_virtual_machine.template_ubuntu.id
  # Network
  network_id            = data.vsphere_network.devops.id
  network_ip            = "172.29.252.71/24"
  network_gw            = "172.29.252.1"
  network_ns_addr       = "172.29.245.1"
  # Disk
  disk_system_label     = "disk0"
  disk_system_size      = 200
  # Docker
  docker_hub_username   = var.docker_hub_username
  docker_hub_password   = var.docker_hub_password
}

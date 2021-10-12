# code: language=Terraform tabSize=2


# =============================================================================
# Provider - vsphere
# =============================================================================

provider "vsphere" {
  vsphere_server       = "iaas-001-vcs01.vcloud"
  user                 = var.vsphere_user
  password             = var.vsphere_password
  allow_unverified_ssl = true
}

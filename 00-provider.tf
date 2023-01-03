terraform {
  required_providers {
    vsphere = {
      version = "1.15.0"
    }
  }
}
provider "vsphere" {
  user           = var.provider_spec.username
  password       = var.provider_spec.password
  vsphere_server = var.provider_spec.vsphere_server

  allow_unverified_ssl = true
}


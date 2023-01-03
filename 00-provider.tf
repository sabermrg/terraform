form {
  required_providers {
    vsphere = {
      version = '1.15.0'
    }
  }
}
provider "vsphere" {
  user = "root"
  password = "1qaz@WSX3edc"
  vsphere_server = '172.16.8.133'

  allow_unverified_ssl = true
}


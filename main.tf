terraform {
  required_providers {
    my_provider = {
      source = 'https://vsphere ....
      version = '1.15.0'
    }
  }
}
provider "my_provider" {
  user = "root"
  password = "1qaz@WSX3edc"
  vsphere_server = '172.16.8.133'

  allow_unverified_ssl = true
}

resource vsphere_virtual_machine "my_vm" {
  name 'terraform-test'
  resource_pool_id = 'ha-root-pool'
  datastore_id = '6167d2b8-152bd577-110d-000c291340e5'

  num_cpus = 2
  memory = 1024
  quest_id = 'other3xLinux64Guest'

  network_interface {
    network_id = 'HaNetwork-VM Network'
  }

  disk = {
    label = disk0
    size = 20
  }
}

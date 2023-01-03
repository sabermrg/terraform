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
  
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout = 0


  disk = {
    label = disk0
    size = 20
  }
}


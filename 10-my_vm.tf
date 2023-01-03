resource "vsphere_virtual_machine" "my_vm" {
  name = var.vm_name
  resource_pool_id = data.vsphere_resource_pool.pool.id # var.resource_pool
  datastore_id = data.vsphere_datastore.datastore.id # var.vsphere_datastore.datastore.id
  
  num_cpus = var.num_cpus
  memory = var.memory
  guest_id = var.guest_id
  
  network_interface {
    network_id = data.vsphere_network.network.id  # var.network_id
  }
  
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout = 0

  disk = {
    label = var.disk.label
    size = var.disk.size
  }
}


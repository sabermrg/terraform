output "datacenter" {
  value = data.vsphere_datastore.dc.id
}

output "datastore_id" {
  value = data.vsphere_datastore.datastore.id
}


variable "provider_spec" {
  type = object({
    username = string
    password = string
    vsphere_server = string
  })
  default = {
    username = "root"
    password = "1qaz@WSX3edc"
    vsphere_server = "172.16.8.133"
  }
}

variable "vm_name" {
  type = string
  default = "Virtual Machine name"
}

#variable "resource_pool" {
#  type = string
#  default = "ha-root-pool"
#}

#variable "datastore_id" {
#  type = string
#  default = "6167d2b8-152bd577-110d-000c291340e5"
#}

variable "num_cpus" {
  type = number
  default = 2
}

variable "memory" {
  type = number
  default = 1024
}

variable "guest_id" {
  type = string
  default = "other3xLinux64Guest"
}

#variable "network_id" {
#  type = string
#  default = "HaNetwork-VM Network"
#}

variable "disk" {
  type = object({
    size = number
    label = string
  })
  default = {
    size = 10
    label = "disk0"
  }
}


















variable "machines" {
  type = list(object({
    name         = string
    disk_size    = string
    pool_name    = string
    ip_address   = string
    cpu          = number
    memory       = number  # Memory in MB
    network_name = string
    gateway4     = string
  }))
}

variable "network_name" {
  type    = string
  default = "rashanet02ph"  # Default network name
}

variable "gateway4" {
  type    = string
  default = "192.168.21.1"  # Default gateway
}


terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.0"
    }
  }
  required_version = ">= 0.12"
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_volume" "ubuntu-qcow2" {
  name   = "ubuntu-qcow2"
  pool   = "default"
  source = "/var/lib/libvirt/boot/focal-server-cloudimg-amd64.img"
  format = "qcow2"
}

resource "libvirt_pool" "pools" {
  for_each = { for machine in var.machines : machine.name => machine }

  name = each.value.pool_name
  type = "dir"
  path = "/var/lib/libvirt/images/${each.value.pool_name}"
}

resource "libvirt_volume" "volumes" {
  for_each = { for machine in var.machines : machine.name => machine }

  name          = "${each.value.name}.qcow2"
  pool          = libvirt_pool.pools[each.key].name
  base_volume_id = libvirt_volume.ubuntu-qcow2.id  # Reference to the base image
  size          = each.value.disk_size
  format        = "qcow2"
}

data "template_file" "user_data" {
  for_each = { for machine in var.machines : machine.name => machine }

  template = file("${path.module}/cloud_init.cfg")

  vars = {
    hostname = each.value.name
    fqdn     = "${each.value.name}.rashasoft.ir"  
  }
}

data "template_file" "network_config" {
  for_each = { for machine in var.machines : machine.name => machine }

  template = <<-EOT
    network:
      version: 2
      ethernets:
        ens3:
          dhcp4: no
          addresses: [${each.value.ip_address}/24]
          gateway4: ${lookup(each.value, "gateway4", var.gateway4)}
          nameservers:
            addresses: [8.8.8.8, 8.8.4.4]
  EOT
}

resource "libvirt_cloudinit_disk" "commoninit" {
  for_each       = { for machine in var.machines : machine.name => machine }
  name           = "${each.value.name}-init.iso"
  user_data      = data.template_file.user_data[each.key].rendered
  network_config = data.template_file.network_config[each.key].rendered
  pool           = libvirt_pool.pools[each.key].name
}

resource "libvirt_domain" "domains" {
  for_each = { for machine in var.machines : machine.name => machine }

  name   = each.value.name
  memory = each.value.memory
  vcpu   = each.value.cpu

  cloudinit = libvirt_cloudinit_disk.commoninit[each.key].id

  network_interface {
    network_name = lookup(each.value, "network_name", var.network_name)
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = libvirt_volume.volumes[each.key].id
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}


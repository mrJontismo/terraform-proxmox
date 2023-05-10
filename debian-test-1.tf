locals {
  vm_names = ["kube-master-1", "kube-master-2", "kube-master-3"]
}

resource "proxmox_vm_qemu" "kube-master" {

    for_each = toset(local.vm_names)

    name = "${each.value}"
    desc = "K3s master node built from packer template."
    target_node = "PVE01-MUN"

    agent = 1

    clone = "debian-11.6-docker"
    cores = 4
    sockets = 1
    cpu = "host"
    memory = 4096

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    disk {
        storage = "local"
        type = "virtio"
        size = "20G"
    }

    os_type = "cloud-init"
}
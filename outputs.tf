output "external-ip" {
  value = var.external_ip != "" ? var.external_ip : data.vcd_edgegateway.edge.external_network_ips[0]
}

output "external-ssh-port" {
  value = var.allow_external_ssh == true ? var.external_ssh_port != "" ? var.external_ssh_port : random_integer.ssh-port[0].result : ""
}

output "internal-ip" {
  value = vcd_vapp_vm.vm.network[0].ip
}

output "name" {
  value = vcd_vapp_vm.vm.name
}

output "user" {
  value = var.admin_user
}

output "password" {
  value = var.admin_password
}

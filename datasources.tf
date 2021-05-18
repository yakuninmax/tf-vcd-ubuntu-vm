# Get default vCD org edge info
data "vcd_edgegateway" "edge" {
  filter {
    name_regex = "^.*$"
  }
}

# Get Terraform host external IP
data "http" "terraform-external-ip" {
  url = "https://api.my-ip.io/ip"
}

# Userdata file template (install Zabbix agent)
data "template_file" "userdata" {
  template = file("${path.module}/userdata.yaml")

  vars = {
    admin_user     = "${var.admin_user}"
    admin_password = "${bcrypt(var.admin_password)}"
    zabbix_server  = "${var.zabbix_server}"
  }
}
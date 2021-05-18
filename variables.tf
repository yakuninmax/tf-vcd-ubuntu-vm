variable "admin_password" {
  type        = string
  description = "Admin user password"
  default     = ""
}

variable "admin_user" {
  type        = string
  description = "Admin user name"
  default     = "administrator"
}

variable "allow_external_ssh" {
  type        = bool
  description = "Allow external SSH connections"
  default     = false
}

variable "cores_per_socket" {
  type        = number
  description = "Number of cores per socket"
  default     = 1
}

variable "cpus" {
  type        = number
  description = "Number of virtual CPUs"
}

variable "data_disks" {
  type = list(object({
    mount_point     = string
    file_system     = string
    storage_profile = string
    size            = number
  }))

  description = "VM hard drives"
  default     = []
}

variable "external_ip" {
  type        = string
  description = "VM external IP address"
  default     = ""
}

variable "external_ssh_port" {
  type        = string
  description = "External SSH port"
  default     = ""
}

variable "media" {
  type = object({
    catalog = string
    name    = string
  })

  default     = null
  description = "Media for VM CD/DVD drive"
}

variable "name" {
  type        = string
  description = "VM name"
}

variable "nics" {
  type = list(object({
    network        = string
    ip             = string
  }))

  description = "VM NICs"  
}

variable "ram" {
  type        = number
  description = "Memory amount in gigabytes"
}

variable "storage_profile" {
  type        = string
  description = "VM storage profile"
  default     = ""
}

variable "system_disk_size" {
  type        = number
  description = "VM system disk size in gigabytes"
  default     = 16
}

variable "system_disk_bus" {
  type        = string
  description = "VM system disk bus type"
  default     = "paravirtual"
}

variable "template" {
  type = object({
    catalog = string
    name    = string
  })
  
  description = "CentOS VM template"
}

variable "vapp" {
  type        = string
  description = "vAPP name"
}

variable "zabbix_server" {
  type        = string
  description = "Zabbix server IP address. If present - install and configure Zabbix agent."
  default     = ""
}
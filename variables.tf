### [BEGIN] variables.tf ###
variable "resource_group_name" {
  description = <<EOD
  [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created.
  EOD
  type        = string
  default     = null
}

variable "default_security_rules" {
  description = <<EOD
  Network security rules to apply to the subnet.
  EOD
  type        = any
  default = {
    ssh = {
      name                   = "ssh"
      priority               = 1001
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "22"
    },
    winrm = {
      name                   = "winrm"
      priority               = 1005
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "5985-5986"
    },
    windows_ata = {
      name                   = "WindowsATA"
      priority               = 1006
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "443"
    }
  }
}
### [END] variables.tf ###
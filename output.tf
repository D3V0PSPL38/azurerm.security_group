### [BEGIN] outptut.tf ###
output "id" {
  description = <<EOD
  [Output] The ID of the Network Security Group
  EOD
  value       = join("", azurerm_network_security_group.this.*.id)
}

output "location" {
  description = <<EOD
  [Output] The supported Azure location where the resource exists.
  EOD
  value       = join("", azurerm_network_security_group.this.*.location)
}

output "security_rule" {
  description = <<EOD
  [Output] One or more security_rule blocks as defined below.
  EOD
  value       = join("", azurerm_network_security_group.this.*.security_rule)
}

output "tags" {
  description = <<EOD
  [Output] A mapping of tags assigned to the resource.
  EOD
  value       = join("", azurerm_network_security_group.this.*.tags)
}

output "name" {
  description = <<EOD
  [Output] The name of the Network Security Group
  EOD
  value       = join("", azurerm_network_security_group.this.*.name)
}

output "description" {
  description = <<EOD
  [Output] The description for this rule.
  EOD
  value       = join("", azurerm_network_security_group.this.*.description)
}


output "protocol" {
  description = <<EOD
  [Output] The network protocol this rule applies to.
  EOD
  value       = join("", azurerm_network_security_group.this.*.protocol)
}

output "source_port_range" {
  description = <<EOD
  [Output] The Source Port or Range.
  EOD
  value       = join("", azurerm_network_security_group.this.*.source_port_range)
}

output "destination_port_range" {
  description = <<EOD
  [Output] The Destination Port or Range.
  EOD
  value       = join("", azurerm_network_security_group.this.*.destination_port_range)
}

output "source_address_prefix" {
  description = <<EOD
  [Output] CIDR or source IP range or * to match any IP.
  EOD
  value       = join("", azurerm_network_security_group.this.*.source_address_prefix)
}

output "source_address_prefixes" {
  description = <<EOD
  [Output] A list of CIDRs or source IP ranges.
  EOD
  value       = join("", azurerm_network_security_group.this.*.source_address_prefixes)
}

output "destination_address_prefix" {
  description = <<EOD
  [Output] CIDR or destination IP range or * to match any IP.
  EOD
  value       = join("", azurerm_network_security_group.this.*.destination_address_prefix)
}

output "destination_address_prefixes" {
  description = <<EOD
  [Output] A list of CIDRs or destination IP ranges.
  EOD
  value       = concat(azurerm_network_security_group.this.*.destination_address_prefixes)
}

output "source_application_security_group_ids" {
  description = <<EOD
  [Output] A List of source Application Security Group IDs
  EOD
  value       = join("", azurerm_network_security_group.this.*.source_application_security_group_ids)
}

output "destination_application_security_group_ids" {
  description = <<EOD
  [Output] A List of destination Application Security Group IDs
  EOD
  value       = join("", azurerm_network_security_group.this.*.destination_application_security_group_ids)
}

output "access" {
  description = <<EOD
  [Output] The network traffic is allowed or denied.
  EOD
  value       = join("", azurerm_network_security_group.this.*.access)
}

output "priority" {
  description = <<EOD
  [Output] The priority of the rule.
  EOD
  value       = join("", azurerm_network_security_group.this.*.priority)
}
output "direction" {
  description = <<EOD
  [Output] The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  EOD
  value       = join("", azurerm_network_security_group.this.*.direction)
}
### [END] output.tf ###
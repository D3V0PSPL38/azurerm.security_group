### [BEGIN] main.tf ###
module "label" {
  source          = "github.com/D3V0PSPL38/terraform-context-label.git"
  enabled         = module.this.enabled
  name            = var.name
  namespace       = var.namespace
  environment     = var.environment
  stage           = var.stage
  location        = var.location
  label_order     = var.label_order
  id_length_limit = var.id_length_limit
  tags            = var.tags
  context         = module.this.context
}

resource "azurerm_network_security_group" "this" {
  count               = local.e ? 1 : 0
  name                = format("%s-%02d", module.label.id, count.index + 1)
  resource_group_name = var.resource_group_name
  location            = var.location
  dynamic "security_rule" {
    for_each = var.default_security_rules
    iterator = rule
    content {
      name                       = rule.value.name
      priority                   = rule.value.priority
      direction                  = rule.value.direction
      access                     = rule.value.access
      protocol                   = rule.value.protocol
      source_port_range          = rule.value.source_port_range
      destination_port_range     = rule.value.destination_port_range
      source_address_prefix      = rule.value.source_address_prefix
      source_address_prefixes    = rule.value.source_address_prefixes
      destination_address_prefix = rule.value.destination_address_prefix
    }
  }
  tags = module.label.tags
}
### [END] main.tf ###
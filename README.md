# azurerm.security_group

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label"></a> [label](#module\_label) | github.com/D3V0PSPL38/terraform-context-label.git | n/a |
| <a name="module_this"></a> [this](#module\_this) | github.com/D3V0PSPL38/terraform-context-label.git | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`.<br>This is for some rare cases where resources want additional configuration of tags<br>and therefore take a list of maps with tag key, value, and additional configuration. | `map(string)` | `{}` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`,<br>in the order they appear in the list. New attributes are appended to the<br>end of the list. The elements of the list are joined by the `delimiter`<br>and treated as a single ID element. | `list(string)` | `[]` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "attributes": [],<br>  "delimiter": null,<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "labels_as_tags": [<br>    "unset"<br>  ],<br>  "location": null,<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {},<br>  "tenant": null<br>}</pre> | no |
| <a name="input_default_security_rules"></a> [default\_security\_rules](#input\_default\_security\_rules) | Network security rules to apply to the subnet. | `any` | <pre>{<br>  "ssh": {<br>    "access": "Allow",<br>    "destination_port_range": "22",<br>    "direction": "Inbound",<br>    "name": "ssh",<br>    "priority": 1001,<br>    "protocol": "Tcp",<br>    "source_port_range": "*"<br>  },<br>  "windows_ata": {<br>    "access": "Allow",<br>    "destination_port_range": "443",<br>    "direction": "Inbound",<br>    "name": "WindowsATA",<br>    "priority": 1006,<br>    "protocol": "Tcp",<br>    "source_port_range": "*"<br>  },<br>  "winrm": {<br>    "access": "Allow",<br>    "destination_port_range": "5985-5986",<br>    "direction": "Inbound",<br>    "name": "winrm",<br>    "priority": 1005,<br>    "protocol": "Tcp",<br>    "source_port_range": "*"<br>  }<br>}</pre> | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between ID elements.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_descriptor_formats"></a> [descriptor\_formats](#input\_descriptor\_formats) | Describe additional descriptors to be output in the `descriptors` output map.<br>Map of maps. Keys are names of descriptors. Values are maps of the form<br>`{<br>   format = string<br>   labels = list(string)<br>}`<br>(Type is `any` so the map values can later be enhanced to provide additional options.)<br>`format` is a Terraform format string to be passed to the `format()` function.<br>`labels` is a list of labels, in order, to pass to `format()` function.<br>Label values will be normalized before being passed to `format()` so they will be<br>identical to how they appear in `id`.<br>Default is `{}` (`descriptors` output will be empty). | `any` | `{}` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for keep the existing setting, which defaults to `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | Controls the letter case of the `tags` keys (label names) for tags generated by this module.<br>Does not affect keys of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The order in which the labels (ID elements) appear in the `id`.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | Controls the letter case of ID elements (labels) as included in `id`,<br>set as tag values, and output by this module individually.<br>Does not affect values of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs.<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_labels_as_tags"></a> [labels\_as\_tags](#input\_labels\_as\_tags) | Set of labels (ID elements) to include as tags in the `tags` output.<br>Default is to include all labels.<br>Tags with empty values will not be included in the `tags` output.<br>Set to `[]` to suppress all generated tags.<br>**Notes:**<br>  The value of the `name` tag, if included, will be the `id`, not the `name`.<br>  Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be<br>  changed in later chained modules. Attempts to change it will be silently ignored. | `set(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | [Required] The Azure region in which the resources will be deployed.<br>    Can be provided in any of the following formats:<br><br>    "Central US" (Standard Format)<br>    "us-central" (CLI Format) | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | `null` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Terraform regular expression (regex) string.<br>Characters matching the regex will be removed from the ID elements.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | [Optional] The name of an existing resource group in which to provision the virtual network. If ommitted, a new resource group will be created. | `string` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access"></a> [access](#output\_access) | [Output] The network traffic is allowed or denied. |
| <a name="output_description"></a> [description](#output\_description) | [Output] The description for this rule. |
| <a name="output_destination_address_prefix"></a> [destination\_address\_prefix](#output\_destination\_address\_prefix) | [Output] CIDR or destination IP range or * to match any IP. |
| <a name="output_destination_address_prefixes"></a> [destination\_address\_prefixes](#output\_destination\_address\_prefixes) | [Output] A list of CIDRs or destination IP ranges. |
| <a name="output_destination_application_security_group_ids"></a> [destination\_application\_security\_group\_ids](#output\_destination\_application\_security\_group\_ids) | [Output] A List of destination Application Security Group IDs |
| <a name="output_destination_port_range"></a> [destination\_port\_range](#output\_destination\_port\_range) | [Output] The Destination Port or Range. |
| <a name="output_direction"></a> [direction](#output\_direction) | [Output] The direction specifies if rule will be evaluated on incoming or outgoing traffic. |
| <a name="output_id"></a> [id](#output\_id) | [Output] The ID of the Network Security Group |
| <a name="output_location"></a> [location](#output\_location) | [Output] The supported Azure location where the resource exists. |
| <a name="output_name"></a> [name](#output\_name) | [Output] The name of the Network Security Group |
| <a name="output_priority"></a> [priority](#output\_priority) | [Output] The priority of the rule. |
| <a name="output_protocol"></a> [protocol](#output\_protocol) | [Output] The network protocol this rule applies to. |
| <a name="output_security_rule"></a> [security\_rule](#output\_security\_rule) | [Output] One or more security\_rule blocks as defined below. |
| <a name="output_source_address_prefix"></a> [source\_address\_prefix](#output\_source\_address\_prefix) | [Output] CIDR or source IP range or * to match any IP. |
| <a name="output_source_address_prefixes"></a> [source\_address\_prefixes](#output\_source\_address\_prefixes) | [Output] A list of CIDRs or source IP ranges. |
| <a name="output_source_application_security_group_ids"></a> [source\_application\_security\_group\_ids](#output\_source\_application\_security\_group\_ids) | [Output] A List of source Application Security Group IDs |
| <a name="output_source_port_range"></a> [source\_port\_range](#output\_source\_port\_range) | [Output] The Source Port or Range. |
| <a name="output_tags"></a> [tags](#output\_tags) | [Output] A mapping of tags assigned to the resource. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

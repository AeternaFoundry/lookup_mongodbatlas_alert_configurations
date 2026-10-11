variable "alert_configurations_lookup" {
  description = <<EOT
Map of alert_configurations_lookup, attributes below
Required:
    - project_id
Optional:
    - output_type
    - list_options (block):
        - include_count (optional)
        - items_per_page (optional)
        - page_num (optional)
EOT

  type = map(object({
    project_id  = string
    output_type = optional(list(string))
    list_options = optional(list(object({
      include_count  = optional(bool)
      items_per_page = optional(number)
      page_num       = optional(number)
    })))
  }))
}


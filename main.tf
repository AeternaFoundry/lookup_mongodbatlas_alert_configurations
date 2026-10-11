data "mongodbatlas_alert_configurations" "alert_configurations_lookup" {
  for_each = var.alert_configurations_lookup

  project_id  = each.value.project_id
  output_type = each.value.output_type

  dynamic "list_options" {
    for_each = each.value.list_options != null ? each.value.list_options : []
    content {
      include_count  = list_options.value.include_count
      items_per_page = list_options.value.items_per_page
      page_num       = list_options.value.page_num
    }
  }
}


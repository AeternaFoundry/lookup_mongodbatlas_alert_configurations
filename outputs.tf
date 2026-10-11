output "alert_configurations_lookup_id" {
  description = "Map of id values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no id are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_configurations_lookup_list_options" {
  description = "Map of list_options values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no list_options are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.list_options if v.list_options != null && length(v.list_options) > 0 }
}
output "alert_configurations_lookup_output_type" {
  description = "Map of output_type values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no output_type are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.output_type if v.output_type != null && length(v.output_type) > 0 }
}
output "alert_configurations_lookup_project_id" {
  description = "Map of project_id values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "alert_configurations_lookup_results" {
  description = "Map of results values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}
output "alert_configurations_lookup_total_count" {
  description = "Map of total_count values across all alert_configurations_lookup, keyed the same as var.alert_configurations_lookup except keys with no total_count are omitted"
  value       = { for k, v in data.mongodbatlas_alert_configurations.alert_configurations_lookup : k => v.total_count if v.total_count != null }
}


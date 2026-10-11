output "developer_connect_account_connectors_id" {
  description = "Map of id values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no id are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "developer_connect_account_connectors_account_connector_id" {
  description = "Map of account_connector_id values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no account_connector_id are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.account_connector_id if v.account_connector_id != null && length(v.account_connector_id) > 0 }
}
output "developer_connect_account_connectors_annotations" {
  description = "Map of annotations values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no annotations are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "developer_connect_account_connectors_create_time" {
  description = "Map of create_time values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no create_time are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "developer_connect_account_connectors_custom_oauth_config" {
  description = "Map of custom_oauth_config values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no custom_oauth_config are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => one(v.custom_oauth_config) if v.custom_oauth_config != null && length(v.custom_oauth_config) > 0 }
}
output "developer_connect_account_connectors_deletion_policy" {
  description = "Map of deletion_policy values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no deletion_policy are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "developer_connect_account_connectors_effective_annotations" {
  description = "Map of effective_annotations values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no effective_annotations are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "developer_connect_account_connectors_effective_labels" {
  description = "Map of effective_labels values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no effective_labels are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "developer_connect_account_connectors_etag" {
  description = "Map of etag values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no etag are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "developer_connect_account_connectors_labels" {
  description = "Map of labels values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no labels are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "developer_connect_account_connectors_location" {
  description = "Map of location values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no location are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.location if v.location != null && length(v.location) > 0 }
}
output "developer_connect_account_connectors_name" {
  description = "Map of name values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no name are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "developer_connect_account_connectors_oauth_start_uri" {
  description = "Map of oauth_start_uri values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no oauth_start_uri are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.oauth_start_uri if v.oauth_start_uri != null && length(v.oauth_start_uri) > 0 }
}
output "developer_connect_account_connectors_project" {
  description = "Map of project values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no project are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.project if v.project != null && length(v.project) > 0 }
}
output "developer_connect_account_connectors_provider_oauth_config" {
  description = "Map of provider_oauth_config values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no provider_oauth_config are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => one(v.provider_oauth_config) if v.provider_oauth_config != null && length(v.provider_oauth_config) > 0 }
}
output "developer_connect_account_connectors_proxy_config" {
  description = "Map of proxy_config values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no proxy_config are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => one(v.proxy_config) if v.proxy_config != null && length(v.proxy_config) > 0 }
}
output "developer_connect_account_connectors_terraform_labels" {
  description = "Map of terraform_labels values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no terraform_labels are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "developer_connect_account_connectors_update_time" {
  description = "Map of update_time values across all developer_connect_account_connectors, keyed the same as var.developer_connect_account_connectors except keys with no update_time are omitted"
  value       = { for k, v in google_developer_connect_account_connector.developer_connect_account_connectors : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}


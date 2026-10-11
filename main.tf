resource "google_developer_connect_account_connector" "developer_connect_account_connectors" {
  for_each = var.developer_connect_account_connectors

  account_connector_id = each.value.account_connector_id
  location             = each.value.location
  annotations          = each.value.annotations
  deletion_policy      = each.value.deletion_policy
  etag                 = each.value.etag
  labels               = each.value.labels
  project              = each.value.project

  dynamic "custom_oauth_config" {
    for_each = each.value.custom_oauth_config != null ? [each.value.custom_oauth_config] : []
    content {
      auth_uri      = custom_oauth_config.value.auth_uri
      client_id     = custom_oauth_config.value.client_id
      client_secret = custom_oauth_config.value.client_secret
      host_uri      = custom_oauth_config.value.host_uri
      pkce_disabled = custom_oauth_config.value.pkce_disabled
      scm_provider  = custom_oauth_config.value.scm_provider
      scopes        = custom_oauth_config.value.scopes
      dynamic "service_directory_config" {
        for_each = custom_oauth_config.value.service_directory_config != null ? [custom_oauth_config.value.service_directory_config] : []
        content {
          service = service_directory_config.value.service
        }
      }
      ssl_ca_certificate = custom_oauth_config.value.ssl_ca_certificate
      token_uri          = custom_oauth_config.value.token_uri
    }
  }

  dynamic "provider_oauth_config" {
    for_each = each.value.provider_oauth_config != null ? [each.value.provider_oauth_config] : []
    content {
      scopes             = provider_oauth_config.value.scopes
      system_provider_id = provider_oauth_config.value.system_provider_id
    }
  }

  dynamic "proxy_config" {
    for_each = each.value.proxy_config != null ? [each.value.proxy_config] : []
    content {
      enabled = proxy_config.value.enabled
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


variable "developer_connect_account_connectors" {
  description = <<EOT
Map of developer_connect_account_connectors, attributes below
Required:
    - account_connector_id
    - location
Optional:
    - annotations
    - deletion_policy
    - etag
    - labels
    - project
    - custom_oauth_config (block):
        - auth_uri (required)
        - client_id (required)
        - client_secret (required)
        - host_uri (required)
        - pkce_disabled (optional)
        - scm_provider (required)
        - scopes (required)
        - service_directory_config (optional, block):
            - service (required)
        - ssl_ca_certificate (optional)
        - token_uri (required)
    - provider_oauth_config (block):
        - scopes (required)
        - system_provider_id (optional)
    - proxy_config (block):
        - enabled (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    account_connector_id = string
    location             = string
    annotations          = optional(map(string))
    deletion_policy      = optional(string)
    etag                 = optional(string)
    labels               = optional(map(string))
    project              = optional(string)
    custom_oauth_config = optional(object({
      auth_uri      = string
      client_id     = string
      client_secret = string
      host_uri      = string
      pkce_disabled = optional(bool)
      scm_provider  = string
      scopes        = list(string)
      service_directory_config = optional(object({
        service = string
      }))
      ssl_ca_certificate = optional(string)
      token_uri          = string
    }))
    provider_oauth_config = optional(object({
      scopes             = list(string)
      system_provider_id = optional(string)
    }))
    proxy_config = optional(object({
      enabled = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


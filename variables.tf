variable "service_account_lookup" {
  description = <<EOT
Map of service_account_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
        - namespace (optional)
EOT

  type = map(object({
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
      namespace   = optional(string)
    })
  }))
}


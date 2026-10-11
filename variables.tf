variable "s3outposts_endpoints" {
  description = <<EOT
Map of s3outposts_endpoints, attributes below
Required:
    - outpost_id
    - security_group_id
    - subnet_id
Optional:
    - access_type
    - customer_owned_ipv4_pool
    - region
EOT

  type = map(object({
    outpost_id               = string
    security_group_id        = string
    subnet_id                = string
    access_type              = optional(string)
    customer_owned_ipv4_pool = optional(string)
    region                   = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3outposts_endpoints : (
        v.customer_owned_ipv4_pool == null || (length(v.customer_owned_ipv4_pool) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.s3outposts_endpoints : (
        length(v.outpost_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.s3outposts_endpoints : (
        length(v.security_group_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


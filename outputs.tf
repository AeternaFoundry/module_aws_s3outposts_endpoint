output "s3outposts_endpoints_id" {
  description = "Map of id values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3outposts_endpoints_access_type" {
  description = "Map of access_type values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.access_type if v.access_type != null && length(v.access_type) > 0 }
}
output "s3outposts_endpoints_arn" {
  description = "Map of arn values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "s3outposts_endpoints_cidr_block" {
  description = "Map of cidr_block values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.cidr_block if v.cidr_block != null && length(v.cidr_block) > 0 }
}
output "s3outposts_endpoints_creation_time" {
  description = "Map of creation_time values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "s3outposts_endpoints_customer_owned_ipv4_pool" {
  description = "Map of customer_owned_ipv4_pool values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.customer_owned_ipv4_pool if v.customer_owned_ipv4_pool != null && length(v.customer_owned_ipv4_pool) > 0 }
}
output "s3outposts_endpoints_network_interfaces" {
  description = "Map of network_interfaces values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.network_interfaces if v.network_interfaces != null && length(v.network_interfaces) > 0 }
}
output "s3outposts_endpoints_outpost_id" {
  description = "Map of outpost_id values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.outpost_id if v.outpost_id != null && length(v.outpost_id) > 0 }
}
output "s3outposts_endpoints_region" {
  description = "Map of region values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3outposts_endpoints_security_group_id" {
  description = "Map of security_group_id values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.security_group_id if v.security_group_id != null && length(v.security_group_id) > 0 }
}
output "s3outposts_endpoints_subnet_id" {
  description = "Map of subnet_id values across all s3outposts_endpoints, keyed the same as var.s3outposts_endpoints"
  value       = { for k, v in aws_s3outposts_endpoint.s3outposts_endpoints : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}


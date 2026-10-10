output "elasticsearch_domain_policies_id" {
  description = "Map of id values across all elasticsearch_domain_policies, keyed the same as var.elasticsearch_domain_policies"
  value       = { for k, v in aws_elasticsearch_domain_policy.elasticsearch_domain_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_domain_policies_access_policies" {
  description = "Map of access_policies values across all elasticsearch_domain_policies, keyed the same as var.elasticsearch_domain_policies"
  value       = { for k, v in aws_elasticsearch_domain_policy.elasticsearch_domain_policies : k => v.access_policies if v.access_policies != null && length(v.access_policies) > 0 }
}
output "elasticsearch_domain_policies_domain_name" {
  description = "Map of domain_name values across all elasticsearch_domain_policies, keyed the same as var.elasticsearch_domain_policies"
  value       = { for k, v in aws_elasticsearch_domain_policy.elasticsearch_domain_policies : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "elasticsearch_domain_policies_region" {
  description = "Map of region values across all elasticsearch_domain_policies, keyed the same as var.elasticsearch_domain_policies"
  value       = { for k, v in aws_elasticsearch_domain_policy.elasticsearch_domain_policies : k => v.region if v.region != null && length(v.region) > 0 }
}


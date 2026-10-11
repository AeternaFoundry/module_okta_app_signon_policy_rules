output "app_signon_policy_rules_id" {
  description = "Map of id values across all app_signon_policy_rules, keyed the same as var.app_signon_policy_rules except keys with no id are omitted"
  value       = { for k, v in okta_app_signon_policy_rules.app_signon_policy_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_signon_policy_rules_policy_id" {
  description = "Map of policy_id values across all app_signon_policy_rules, keyed the same as var.app_signon_policy_rules except keys with no policy_id are omitted"
  value       = { for k, v in okta_app_signon_policy_rules.app_signon_policy_rules : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "app_signon_policy_rules_rule" {
  description = "Map of rule values across all app_signon_policy_rules, keyed the same as var.app_signon_policy_rules except keys with no rule are omitted"
  value       = { for k, v in okta_app_signon_policy_rules.app_signon_policy_rules : k => v.rule if v.rule != null && length(v.rule) > 0 }
}


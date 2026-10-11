resource "okta_app_signon_policy_rules" "app_signon_policy_rules" {
  for_each = var.app_signon_policy_rules

  policy_id = each.value.policy_id

  dynamic "rule" {
    for_each = each.value.rule != null ? each.value.rule : []
    content {
      access                     = rule.value.access
      chains                     = rule.value.chains
      constraints                = rule.value.constraints
      custom_expression          = rule.value.custom_expression
      device_assurances_included = rule.value.device_assurances_included
      device_is_managed          = rule.value.device_is_managed
      device_is_registered       = rule.value.device_is_registered
      factor_mode                = rule.value.factor_mode
      groups_excluded            = rule.value.groups_excluded
      groups_included            = rule.value.groups_included
      id                         = rule.value.id
      inactivity_period          = rule.value.inactivity_period
      dynamic "keep_me_signed_in" {
        for_each = rule.value.keep_me_signed_in != null ? rule.value.keep_me_signed_in : []
        content {
          post_auth                  = keep_me_signed_in.value.post_auth
          post_auth_prompt_frequency = keep_me_signed_in.value.post_auth_prompt_frequency
        }
      }
      name               = rule.value.name
      network_connection = rule.value.network_connection
      network_excludes   = rule.value.network_excludes
      network_includes   = rule.value.network_includes
      dynamic "platform_include" {
        for_each = rule.value.platform_include != null ? rule.value.platform_include : []
        content {
          os_expression = platform_include.value.os_expression
          os_type       = platform_include.value.os_type
          type          = platform_include.value.type
        }
      }
      priority                    = rule.value.priority
      re_authentication_frequency = rule.value.re_authentication_frequency
      risk_score                  = rule.value.risk_score
      status                      = rule.value.status
      type                        = rule.value.type
      user_types_excluded         = rule.value.user_types_excluded
      user_types_included         = rule.value.user_types_included
      users_excluded              = rule.value.users_excluded
      users_included              = rule.value.users_included
    }
  }
}


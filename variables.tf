variable "app_signon_policy_rules" {
  description = <<EOT
Map of app_signon_policy_rules, attributes below
Required:
    - policy_id
Optional:
    - rule (block):
        - access (optional)
        - chains (optional)
        - constraints (optional)
        - custom_expression (optional)
        - device_assurances_included (optional)
        - device_is_managed (optional)
        - device_is_registered (optional)
        - factor_mode (optional)
        - groups_excluded (optional)
        - groups_included (optional)
        - id (optional)
        - inactivity_period (optional)
        - keep_me_signed_in (optional, block):
            - post_auth (optional)
            - post_auth_prompt_frequency (optional)
        - name (required)
        - network_connection (optional)
        - network_excludes (optional)
        - network_includes (optional)
        - platform_include (optional, block):
            - os_expression (optional)
            - os_type (optional)
            - type (optional)
        - priority (optional)
        - re_authentication_frequency (optional)
        - risk_score (optional)
        - status (optional)
        - type (optional)
        - user_types_excluded (optional)
        - user_types_included (optional)
        - users_excluded (optional)
        - users_included (optional)
EOT

  type = map(object({
    policy_id = string
    rule = optional(list(object({
      access                     = optional(string)
      chains                     = optional(list(string))
      constraints                = optional(list(string))
      custom_expression          = optional(string)
      device_assurances_included = optional(set(string))
      device_is_managed          = optional(bool)
      device_is_registered       = optional(bool)
      factor_mode                = optional(string)
      groups_excluded            = optional(set(string))
      groups_included            = optional(set(string))
      id                         = optional(string)
      inactivity_period          = optional(string)
      keep_me_signed_in = optional(list(object({
        post_auth                  = optional(string)
        post_auth_prompt_frequency = optional(string)
      })))
      name               = string
      network_connection = optional(string)
      network_excludes   = optional(list(string))
      network_includes   = optional(list(string))
      platform_include = optional(list(object({
        os_expression = optional(string)
        os_type       = optional(string)
        type          = optional(string)
      })))
      priority                    = optional(number)
      re_authentication_frequency = optional(string)
      risk_score                  = optional(string)
      status                      = optional(string)
      type                        = optional(string)
      user_types_excluded         = optional(set(string))
      user_types_included         = optional(set(string))
      users_excluded              = optional(set(string))
      users_included              = optional(set(string))
    })))
  }))
}


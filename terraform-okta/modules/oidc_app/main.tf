resource "okta_app_oauth" "this" {
  label = var.label
  type  = var.application_type

  grant_types    = var.grant_types
  response_types = var.response_types

  redirect_uris             = var.redirect_uris
  post_logout_redirect_uris = var.post_logout_redirect_uris

  consent_method = var.consent_method
  issuer_mode    = var.issuer_mode

  refresh_token_rotation = var.refresh_token_rotation
}


locals {
  label_slug = lower(replace(var.label, " ", "-"))
  authz_name = coalesce(var.auth_server_name, "${var.label}-auth-server")
  audience = coalesce(var.audience_uri, "api://${local.label_slug}")
  policy_name = coalesce(var.policy_name, "${var.label}-policy")
  rule_name   = coalesce(var.rule_name,   "${var.label}-rule")
}


resource "okta_auth_server" "per_app" {
  name        = local.authz_name
  description = "Authorization server for ${var.label}"
  audiences   = [local.audience]
  status      = "ACTIVE"
}

resource "okta_auth_server_policy" "per_app" {
  auth_server_id = okta_auth_server.per_app.id
  name           = local.policy_name
  description    = "Access policy for ${var.label}"
  priority       = 1
  client_whitelist = [okta_app_oauth.this.client_id]
  status         = "ACTIVE"
}

resource "okta_auth_server_policy_rule" "per_rule" {
  auth_server_id = okta_auth_server.per_app.id
  policy_id      = okta_auth_server_policy.per_app.id

  name     = local.rule_name
  priority = 1
  grant_type_whitelist = ["client_credentials"]
  scope_whitelist = ["*"]
}
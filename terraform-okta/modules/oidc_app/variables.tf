variable "label" {}
variable "application_type" {}

variable "grant_types" {
  type = list(string)
}

variable "response_types" {
  type = list(string)
}

variable "redirect_uris" {
  type = list(string)
}

variable "post_logout_redirect_uris" {
  type = list(string)
}

variable "consent_method" {}
variable "issuer_mode" {}
variable "refresh_token_rotation" {}

variable "auth_server_name" { 
  type = string
  default = null 
}

variable "audience_uri" { 
  type = string 
  default = null 
}

variable "policy_name"  { 
  type = string
  default = null 
}

variable "rule_name" { 
  type = string
  default = null 
}

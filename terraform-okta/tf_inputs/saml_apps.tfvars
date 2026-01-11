saml_apps = {
  saml456 = {
    label = "saml456"
    sso_acs_url = "https://test.arm.com/api/auth/login/acs/"
    recipient = "https://test.arm.com/api/auth/login/acs/"
    destination = "https://test.arm.com/api/auth/login/acs/"
    audience = "https://test.arm.com/metadata/"
    idp_issuer = "http://www.okta.com/$${org.externalKey}"
    subject_name_id_template = "$${user.userName}"
    subject_name_id_format = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
    response_signed = true
    assertion_signed = true
    signature_algorithm = "RSA_SHA256"
    digest_algorithm = "SHA256"
    honor_force_authn = true
    authn_context_class_ref = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
    attribute_statements = []
  }
  samlapp123 = {
    label = "samlapp123"
    sso_acs_url = "https://auth.akeyless.io/saml/acs"
    recipient = "https://auth.akeyless.io/saml/acs"
    destination = "https://auth.akeyless.io/saml/acs"
    audience = "https://auth.akeyless.io/saml/metadata"
    idp_issuer = "http://www.okta.com/$${org.externalKey}"
    subject_name_id_template = "$${user.userName}"
    subject_name_id_format = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
    response_signed = true
    assertion_signed = true
    signature_algorithm = "RSA_SHA256"
    digest_algorithm = "SHA256"
    honor_force_authn = true
    authn_context_class_ref = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
    attribute_statements = []
  }
}
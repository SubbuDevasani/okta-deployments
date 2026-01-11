oidc_apps = {
  service456 = {
    label = "service456"
    application_type = "service"
    grant_types = ["client_credentials"]
    response_types = []
    redirect_uris = []
    redirect_uris_test = []
    redirect_uris_prod = []
    post_logout_redirect_uris = []
    consent_method = "REQUIRED"
    issuer_mode = "DYNAMIC"
    refresh_token_rotation = "STATIC"
    token_endpoint_auth_method = "client_secret_basic"
  }
  webapp123 = {
    label = "webapp123"
    application_type = "web"
    grant_types = ["authorization_code"]
    response_types = ["code"]
    redirect_uris = ["http://localhost:8080/authorization-code/callback"]
    redirect_uris_test = []
    redirect_uris_prod = ["http://localhost:8080/authorization-code/callback"]
    post_logout_redirect_uris = ["http://localhost:8080"]
    consent_method = "REQUIRED"
    issuer_mode = "DYNAMIC"
    refresh_token_rotation = "STATIC"
    token_endpoint_auth_method = "client_secret_basic"
  }
  webapp456 = {
    label = "webapp456"
    application_type = "web"
    grant_types = ["authorization_code"]
    response_types = ["code"]
    redirect_uris = ["http://localhost:8080/authorization-code/callback"]
    redirect_uris_test = []
    redirect_uris_prod = ["http://localhost:8080/authorization-code/callback"]
    post_logout_redirect_uris = ["http://localhost:8080"]
    consent_method = "REQUIRED"
    issuer_mode = "DYNAMIC"
    refresh_token_rotation = "STATIC"
    token_endpoint_auth_method = "client_secret_basic"
  }
  service123 = {
    label = "service123"
    application_type = "service"
    grant_types = ["client_credentials"]
    response_types = []
    redirect_uris = []
    redirect_uris_test = []
    redirect_uris_prod = []
    post_logout_redirect_uris = []
    consent_method = "REQUIRED"
    issuer_mode = "DYNAMIC"
    refresh_token_rotation = "STATIC"
    token_endpoint_auth_method = "client_secret_basic"
  }
}
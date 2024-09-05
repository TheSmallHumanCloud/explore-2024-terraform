locals {
  bearer    = jsondecode(terracurl_request.token.response)
  domain_id = jsondecode(terracurl_request.domain_id.response)
  network_pool_id = jsondecode(terracurl_request.network_pool_id.response)
}
resource "terracurl_request" "token" {
  name            = "get-token"
  url             = "https://${var.sddc_manager_host}/v1/tokens"
  method          = "POST"
  skip_tls_verify = true
  response_codes = [
    200,
    201,
    400,
    500
  ]
  headers = {
    Accept       = "application/json"
    Content-Type = "application/json"
  }
  request_body = <<EOF
{
  "username" : "${var.sddc_manager_username}",
    "password" : "${var.sddc_manager_password}"
    }
EOF
}


resource "terracurl_request" "domain_id" {
  name            = "get-cluster-id"
  url             = "https://${var.sddc_manager_host}/v1/domains"
  method          = "GET"
  skip_tls_verify = true
  response_codes = [
    200,
    400,
    500
  ]
  headers = {
    Accept        = "application/json"
    Content-Type  = "application/json"
    Authorization = "Bearer ${local.bearer.accessToken}"
  }
}
resource "terracurl_request" "network_pool_id" {
  name            = "get-network-pool-id"
  url             = "https://${var.sddc_manager_host}/v1/network-pools"
  method          = "GET"
  skip_tls_verify = true
  response_codes = [
    200,
    404,
    500
  ]
  headers = {
    Accept        = "application/json"
    Content-Type  = "application/json"
    Authorization = "Bearer ${local.bearer.accessToken}"
  }
}
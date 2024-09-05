data "vcf_credentials" "nsxt_creds" {
  resource_type = var.data_vcf_nsxt_creds_resource_type
}

locals {
  users = {
    user0 = data.vcf_credentials.nsxt_creds.credentials[0]
    user1 = data.vcf_credentials.nsxt_creds.credentials[1]
    user2 = data.vcf_credentials.nsxt_creds.credentials[2]
  }
}

resource "vcf_credentials_auto_rotate_policy" "m01_nsx" {
  for_each             = local.users
  resource_id          = each.value.resource[0].id
  resource_type        = each.value.resource[0].type
  user_name            = each.value.user_name
  enable_auto_rotation = var.vcf_credentials_auto_rotate_policy_m01_nsx.enable_auto_rotation
  auto_rotate_days     = var.vcf_credentials_auto_rotate_policy_m01_nsx.auto_rotate_days
}

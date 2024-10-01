# Provider variables
sddc_manager_host = "demo-vcf02.demo.local"

# Credential Rotate Configuration
data_vcf_nsxt_creds_resource_type = "NSXT_MANAGER" # One among ESXI, VCENTER, PSC, NSX_MANAGER, NSX_CONTROLLER, NSX_EDGE, NSXT_MANAGER, VRLI, VROPS, VRA, WSA, VRSLCM, VXRAIL_MANAGER, NSX_ALB, BACKUP
vcf_credentials_auto_rotate_policy_m01_nsx = {
  enable_auto_rotation = true
  auto_rotate_days     = 7
}


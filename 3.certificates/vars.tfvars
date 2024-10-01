# Provider variables
sddc_manager_host = "demo-vcf02.demo.local"


# Certificate Authority variables
vcf_certificate_authority_demo = {
  microsoft = {
    server_url    = "http://addc01.domain.local/certsrv"
    template_name = "VMware"
  }
}

# CSR variables
vcf_csr_demo_sddc_manager = {
  resource          = "SDDC_MANAGER" #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
  fqdn              = "demo-vcf02.demo.local"
  key_size          = 2048
  organization      = "demo lab"
  organization_unit = "demo bu"
  locality          = "demo land"
  state             = "demo county"
  country           = "GB"
  email             = "admin@demo.local"
}
vcf_csr_demo_vcenter = {
  resource          = "VCENTER" #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
  fqdn              = "demo-m01-vc02.demo.local"
  key_size          = 2048
  organization      = "demo lab"
  organization_unit = "demo bu"
  locality          = "demo land"
  state             = "demo county"
  country           = "GB"
  email             = "admin@demo.local"
}
vcf_csr_demo_nsx = {
  resource          = "NSXT_MANAGER" #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
  fqdn              = "demo-m01-nsx02.demo.local"
  key_size          = 2048
  organization      = "demo lab"
  organization_unit = "demo bu"
  locality          = "demo land"
  state             = "demo county"
  country           = "GB"
  email             = "admin@demo.local"
}

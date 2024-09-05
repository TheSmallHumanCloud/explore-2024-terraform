# Configure Microsoft Certificate Authority
resource "vcf_certificate_authority" "demo" {
  microsoft {
    server_url    = var.vcf_certificate_authority_demo.microsoft.server_url
    username      = var.vcf_certificate_authority_demo_username
    secret        = var.vcf_certificate_authority_demo_secret
    template_name = var.vcf_certificate_authority_demo.microsoft.template_name
  }
}

# Generate CSR for SDDC Manager
resource "vcf_csr" "sddc_manager" {
  resource          = var.vcf_csr_demo_sddc_manager.resource
  fqdn              = var.vcf_csr_demo_sddc_manager.fqdn
  key_size          = var.vcf_csr_demo_sddc_manager.key_size
  domain_id         = local.domain_id.elements[0].id
  organization      = var.vcf_csr_demo_sddc_manager.organization
  organization_unit = var.vcf_csr_demo_sddc_manager.organization_unit
  locality          = var.vcf_csr_demo_sddc_manager.locality
  state             = var.vcf_csr_demo_sddc_manager.state
  country           = var.vcf_csr_demo_sddc_manager.country
  email             = var.vcf_csr_demo_sddc_manager.email
}

# Generate CSR for vCenter
resource "vcf_csr" "vcenter" {
  resource          = var.vcf_csr_demo_vcenter.resource
  key_size          = var.vcf_csr_demo_vcenter.key_size
  fqdn              = var.vcf_csr_demo_vcenter.fqdn
  domain_id         = local.domain_id.elements[0].id
  organization      = var.vcf_csr_demo_vcenter.organization
  organization_unit = var.vcf_csr_demo_vcenter.organization_unit
  locality          = var.vcf_csr_demo_vcenter.locality
  state             = var.vcf_csr_demo_vcenter.state
  country           = var.vcf_csr_demo_vcenter.country
  email             = var.vcf_csr_demo_vcenter.email
  depends_on        = [vcf_csr.sddc_manager]
}

# Generate CSR for NSX Managers
resource "vcf_csr" "nsxt_manager" {
  resource          = var.vcf_csr_demo_nsx.resource
  fqdn              = var.vcf_csr_demo_nsx.fqdn
  key_size          = var.vcf_csr_demo_nsx.key_size
  domain_id         = local.domain_id.elements[0].id
  organization      = var.vcf_csr_demo_nsx.organization
  organization_unit = var.vcf_csr_demo_nsx.organization_unit
  locality          = var.vcf_csr_demo_nsx.locality
  state             = var.vcf_csr_demo_nsx.state
  country           = var.vcf_csr_demo_nsx.country
  email             = var.vcf_csr_demo_nsx.email
  depends_on        = [vcf_csr.vcenter]
}

# Generate and Apply Certificates
resource "vcf_certificate" "sddc_manager" {
  csr_id     = vcf_csr.sddc_manager.id
  ca_id      = vcf_certificate_authority.demo.id
  depends_on = [vcf_csr.nsxt_manager]
}
resource "vcf_certificate" "vcenter" {
  csr_id     = vcf_csr.vcenter.id
  ca_id      = vcf_certificate_authority.demo.id
  depends_on = [vcf_certificate.sddc_manager]
}
resource "vcf_certificate" "nsxt_manager" {
  csr_id     = vcf_csr.nsxt_manager.id
  ca_id      = vcf_certificate_authority.demo.id
  depends_on = [vcf_certificate.vcenter]
}

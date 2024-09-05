# Variables

# Password variables
variable "sddc_manager_password" {
  type        = string
  description = "SDDC Manager Password"
  sensitive   = true
}
variable "vcf_certificate_authority_demo_username" {
  type        = string
  description = "CA service account username"
  sensitive   = true

}
variable "vcf_certificate_authority_demo_secret" {
  type        = string
  description = "CA service account password"
  sensitive   = true

}
# Provider variables
variable "sddc_manager_username" {
  type        = string
  description = "SDDC Manager Username"
  default     = "administrator@vsphere.local"
  sensitive   = true
}
variable "sddc_manager_host" {
  type        = string
  description = "SDDC Manager FQDN"
}

#Certificate Authority variables
variable "vcf_certificate_authority_demo" {
  description = "CA configuration details"
  type = object({
    microsoft = object({
      server_url    = string
      template_name = string
    })
  })
}

#CSR variables
#CSR variables
variable "vcf_csr_demo_vcenter" {
  description = "CSR configuration details"
  type = object({
    resource          = string #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
    key_size          = number
    fqdn              = string
    organization      = string
    organization_unit = string
    locality          = string
    state             = string
    country           = string
    email             = string
  })
}
variable "vcf_csr_demo_sddc_manager" {
  description = "CSR configuration details"
  type = object({
    resource          = string #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
    fqdn              = string
    key_size          = number
    organization      = string
    organization_unit = string
    locality          = string
    state             = string
    country           = string
    email             = string
  })
}
variable "vcf_csr_demo_nsx" {
  description = "CSR configuration details"
  type = object({
    resource          = string #One among: SDDC_MANAGER, VCENTER, NSX_MANAGER, NSXT_MANAGER, VROPS, VRSLCM, VXRAIL_MANAGER
    fqdn              = string
    key_size          = number
    organization      = string
    organization_unit = string
    locality          = string
    state             = string
    country           = string
    email             = string
  })
}


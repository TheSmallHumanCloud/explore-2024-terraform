# Variables

# Password variables
variable "sddc_manager_password" {
  type        = string
  description = "SDDC Manager Password"
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
  description = "SDDC Manager FQDN"
}

# Credential rotate variables
variable "data_vcf_nsxt_creds_resource_type" {
  description = "Credential Type to set rotation policy for."
  type        = string
}
variable "vcf_credentials_auto_rotate_policy_m01_nsx" {
  description = "Rotation configuration details."
  type = object({
    enable_auto_rotation = bool
    auto_rotate_days     = number
  })
}

## Terraform Providers
terraform {
  required_providers {
    vcf = {
      source  = "vmware/vcf"
      version = "0.9.1"
    }
  }
}

#Provider Configuration Options
provider "vcf" {
  cloud_builder_host     = var.cloud_builder_host
  cloud_builder_username = var.cloud_builder_username
  cloud_builder_password = var.cloud_builder_password
  allow_unverified_tls   = true
}

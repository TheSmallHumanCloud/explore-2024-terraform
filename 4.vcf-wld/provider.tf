## Terraform Providers
terraform {
  required_providers {
    vcf = {
      source  = "vmware/vcf"
      version = "0.9.1"
    }
    terracurl = {
      source = "devops-rob/terracurl"
    }
  }
}

#Provider Configuration Options
provider "vcf" {
  sddc_manager_host     = var.sddc_manager_host
  sddc_manager_username = var.sddc_manager_username
  sddc_manager_password = var.sddc_manager_password
  allow_unverified_tls  = true
}

provider "terracurl" {}

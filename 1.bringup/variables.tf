# Variables

# Password variables
variable "cloud_builder_password" {
  description = "CloudBuilder Password"
  sensitive   = true
  type        = string
}
variable "sddc_manager_root_user_password" {
  description = "SDDC Manager root Password"
  sensitive   = true
  type        = string

}
variable "sddc_manager_secondary_user_password" {
  description = "SDDC Manager VCF User Password"
  sensitive   = true
  type        = string

}
variable "nsx_admin_password" {
  description = "NSX Admin Password"
  sensitive   = true
  type        = string

}
variable "nsx_audit_password" {
  type        = string
  description = "NSX Audit Password"
  sensitive   = true
}
variable "root_nsx_manager_password" {
  description = "NSX Manager Root Password"
  sensitive   = true
  type        = string
}
variable "admin_user_sso_password" {
  description = "PSC SSO Password"
  sensitive   = true
  type        = string

}
variable "root_vcenter_password" {
  description = "SDDC Manager Root Password"
  sensitive   = true
  type        = string
}
variable "esx_host1_password" {
  description = "ESXi Host 01 Root Password"
  sensitive   = true
  type        = string
}
variable "esx_host2_password" {
  description = "ESXi Host 01 Root Password"
  sensitive   = true
  type        = string
}
variable "esx_host3_password" {
  description = "ESXi Host 01 Root Password"
  sensitive   = true
  type        = string
}
variable "esx_host4_password" {
  description = "ESXi Host 01 Root Password"
  sensitive   = true
  type        = string
}

# Provider variables
variable "cloud_builder_username" {
  description = "CloudBuilder Username"
  default     = "admin"
  sensitive   = true
  type        = string
}
variable "cloud_builder_host" {
  description = "CloudBuilder FQDN"
  type        = string
}

# SDDC Manager variables
# Note: Each variable has been declared as its own variable with a type.
variable "vcf_instance_demo_instance_id" {
  description = "SDDC Manager Instance ID Name"
  type        = string
}
variable "vcf_instance_demo_dv_switch_version" {
  description = "Distributed Switch Version"
  type        = string
}
variable "vcf_instance_demo_skip_esx_thumbprint_validation" {
  description = "Option to skip SSL validation"
  type        = bool
}
variable "vcf_instance_demo_management_pool_name" {
  description = "Management IP Pool Name"
  type        = string
}
variable "vcf_instance_demo_ceip_enabled" {
  description = "Enable CEIP true or False"
  type        = bool
}
variable "vcf_instance_demo_task_name" {
  description = "Task path and file name"
  type        = string
}
variable "vcf_instance_demo_sddc_manager_ip_address" {
  description = "IP Address for the SDDC Manager "
  type        = string
}
variable "vcf_instance_demo_sddc_manager_hostname" {
  description = "Hostname for the SDDC Manager "
  type        = string
}
variable "vcf_instance_demo_sddc_manager_root_user_username" {
  description = "SDDC Manager root username"
  default     = "root"
  type        = string
}
variable "vcf_instance_demo_sddc_manager_secondary_user_username" {
  description = "SDDC Manager vcf username"
  default     = "vcf"
  type        = string
}

# NTP variables
variable "vcf_instance_demo_ntp" {
  description = "NTP Server (currently single entry, change to block for multiple)"
  type        = string
}

# DNS variables
variable "vcf_instance_demo_dns_domain" {
  description = "DNS domain name"
  type        = string
}
variable "vcf_instance_demo_dns_name_server" {
  description = "DNS server IP"
  type        = string
}

# Management network variables
variable "vcf_instance_demo_network_management" {
  description = "Management network configuration details"
  type = object({
    subnet       = string
    vlan_id      = number
    mtu          = number
    network_type = string
    gateway      = string
  })
}

# VM Management network variables
# Note: A single variables has been declared but contains multiple attributes, each with a type per attribute.

variable "vcf_instance_demo_network_vm_management" {
  description = "VM management network configuration details"
  type = object({
    subnet         = string
    vlan_id        = number
    mtu            = number
    network_type   = string
    gateway        = string
    port_group_key = string
  })
}

# vMotion network variables
variable "vcf_instance_demo_network_vmotion" {
  description = "vMotion network configuration details"
  type = object({
    subnet       = string
    vlan_id      = number
    mtu          = number
    network_type = string
    gateway      = string
    include_ip_address_ranges = object({
      ip_address_ranges_start = string
      ip_address_ranges_end   = string
    })
  })
}

# vSAN network variables
variable "vcf_instance_demo_network_vsan" {
  description = "vSAN network configuration details"
  type = object({
    subnet       = string
    vlan_id      = number
    mtu          = number
    network_type = string
    gateway      = string
    include_ip_address_ranges = object({
      ip_address_ranges_start = string
      ip_address_ranges_end   = string
    })

  })
}

# NSX variables
variable "vcf_instance_demo_nsx" {
  description = "NSX deployment configuration details"
  type = object({
    nsx_manager_size  = string
    vip               = string
    vip_fqdn          = string
    transport_vlan_id = number
    nsx_manager_a = object({
      hostname = string
      ip       = string
    })
    nsx_manager_b = object({
      hostname = string
      ip       = string
    })
    nsx_manager_c = object({
      hostname = string
      ip       = string
    })
    ip_address_pool = object({
      name = string #No spaces!!
      subnet = object({
        cidr    = string
        gateway = string
        ip_address_pool_range = object({
          start = string
          end   = string
        })
      })
    })
    overlay_transport_zone = object({
      zone_name    = string
      network_name = string
    })
  })
}
#vDS configurations
variable "vcf_instance_demo_vds" {
  description = "vDS configuration details"
  type = object({

    dvs_name = string
    mtu      = number
    nioc_vsan = object({
      traffic_type = string
      value        = string
    })
    nioc_vmotion = object({
      traffic_type = string
      value        = string
    })
    nioc_vm = object({
      traffic_type = string
      value        = string
    })
    nioc_management = object({
      traffic_type = string
      value        = string
    })
    nioc_vdp = object({
      traffic_type = string
      value        = string
    })
    nioc_nfs = object({
      traffic_type = string
      value        = string
    })
    nioc_hbr = object({
      traffic_type = string
      value        = string
    })
    nioc_fault = object({
      traffic_type = string
      value        = string
    })
    nioc_iscsi = object({
      traffic_type = string
      value        = string
    })
    vmnics   = list(string)
    networks = list(string)
  })
}
# Cluster configuration
variable "vcf_instance_demo_cluster" {
  description = "Cluster configuration details"
  type = object({
    cluster_name = string
    resource_pool_management = object({
      name         = string
      network_type = string
    })
    resource_pool_network = object({
      name         = string
      network_type = string
    })
  })
}
# PSC variables
variable "vcf_instance_demo_psc" {
  description = "PSC configuration details"
  type = object({
    psc_sso_domain = string
  })
}
# vCenter variables
variable "vcf_instance_demo_vCenter" {
  description = "vCenter configuration details"
  type = object({
    vcenter_ip       = string
    vcenter_hostname = string
    vm_size          = string
  })
}

# vSAN variables
variable "vcf_instance_demo_vSAN" {
  description = "vSAN configuration details"
  type = object({
    datastore_name = string
  })
}

#ESXi variables
variable "vcf_instance_demo_esx_host1" {
  description = "ESXi Host 1 configuration details"
  type = object({
    credentials = object({
      username = string
    })
    ip_address_private = object({
      subnet     = string
      ip_address = string
      gateway    = string
    })
    hostname    = string
    vswitch     = string
    association = string
  })
}
variable "vcf_instance_demo_esx_host2" {
  description = "ESXi Host 2 configuration details"
  type = object({
    credentials = object({
      username = string
    })
    ip_address_private = object({
      subnet     = string
      ip_address = string
      gateway    = string
    })
    hostname    = string
    vswitch     = string
    association = string
  })
}
variable "vcf_instance_demo_esx_host3" {
  description = "ESXi Host 3 configuration details"
  type = object({
    credentials = object({
      username = string
    })
    ip_address_private = object({
      subnet     = string
      ip_address = string
      gateway    = string
    })
    hostname    = string
    vswitch     = string
    association = string
  })
}
variable "vcf_instance_demo_esx_host4" {
  description = "ESXi Host 4 configuration details"
  type = object({
    credentials = object({
      username = string
    })
    ip_address_private = object({
      subnet     = string
      ip_address = string
      gateway    = string
    })
    hostname    = string
    vswitch     = string
    association = string
  })
}

#License variables
variable "vcf_instance_demo_license_key" {
  description = "License values"
  sensitive   = true
  type = object({
    nsx     = string
    vcenter = string
    vsan    = string
    esxi    = string
  })
}



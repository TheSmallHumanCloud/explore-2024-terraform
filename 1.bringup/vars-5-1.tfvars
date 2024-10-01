# Provider variables
cloud_builder_host = "demo-cb02.demo.local"

# SDDC Manager variables
vcf_instance_demo_instance_id                    = "demo-m02"
vcf_instance_demo_dv_switch_version              = "7.0.3"
vcf_instance_demo_skip_esx_thumbprint_validation = true
vcf_instance_demo_management_pool_name           = "demo-m01-np01"
vcf_instance_demo_ceip_enabled                   = true
vcf_instance_demo_task_name                      = "workflowconfig/workflowspec-ems.json"
vcf_instance_demo_sddc_manager_ip_address        = "192.168.1.130"
vcf_instance_demo_sddc_manager_hostname          = "demo-vcf02"
vcf_instance_demo_ntp                            = "10.111.0.74"
vcf_instance_demo_dns_domain                     = "demo.local"
vcf_instance_demo_dns_name_server                = "192.168.1.10"

# Management network variables
vcf_instance_demo_network_management = {
  subnet       = "192.168.0.0/24"
  vlan_id      = "150"
  mtu          = "1500"
  network_type = "MANAGEMENT"
  gateway      = "192.168.0.254"
}
# VM Management network variables
vcf_instance_demo_network_vm_management = {
  subnet         = "192.168.1.0/24"
  vlan_id        = "151"
  mtu            = "9000"
  network_type   = "VM_MANAGEMENT"
  gateway        = "192.168.1.254"
  port_group_key = "VM_Management"
}

# vMotion network variables
vcf_instance_demo_network_vmotion = {
  subnet       = "192.168.2.0/24"
  vlan_id      = "152"
  mtu          = "9000"
  network_type = "VMOTION"
  gateway      = "192.168.2.254"
  include_ip_address_ranges = {
    ip_address_ranges_start = "192.168.2.110"
    ip_address_ranges_end   = "192.168.2.125"
  }
}

# vSAN network variables
vcf_instance_demo_network_vsan = {
  subnet       = "192.168.3.0/24"
  vlan_id      = "153"
  mtu          = "9000"
  network_type = "VSAN"
  gateway      = "192.168.3.254"
  include_ip_address_ranges = {
    ip_address_ranges_start = "192.168.3.110"
    ip_address_ranges_end   = "192.168.3.125"
  }
}

# NSX variables
vcf_instance_demo_nsx = {
  nsx_manager_size  = "medium"
  vip               = "192.168.1.126"
  vip_fqdn          = "demo-m01-nsx02"
  transport_vlan_id = 154
  nsx_manager_a = {
    hostname = "demo-m01-nsx02a"
    ip       = "192.168.1.127"
  }
  nsx_manager_b = {
    hostname = "demo-m01-nsx02b"
    ip       = "192.168.1.128"
  }
  nsx_manager_c = {
    hostname = "demo-m01-nsx02c"
    ip       = "192.168.1.129"
  }
  ip_address_pool = {
    name = "TEP_Pool" #No spaces!!
    subnet = {
      cidr    = "192.168.4.0/24"
      gateway = "192.168.4.254"
      ip_address_pool_range = {
        start = "192.168.4.90"
        end   = "192.168.4.110"
      }
    }
  }
  overlay_transport_zone = {
    zone_name    = "demo-m01-overlay-tz"
    network_name = "demo-m01-overlay"
  }
}
# vDS variables
vcf_instance_demo_vds = {
  dvs_name = "demo-m01-cl01-vds01"
  mtu      = 9000
  nioc_vsan = {
    traffic_type = "VSAN"
    value        = "HIGH"

  }
  nioc_vmotion = {
    traffic_type = "VMOTION"
    value        = "LOW"
  }
  nioc_vm = {
    traffic_type = "VIRTUALMACHINE"
    value        = "HIGH"
  }
  nioc_management = {
    traffic_type = "MANAGEMENT"
    value        = "NORMAL"
  }
  nioc_vdp = {
    traffic_type = "VDP"
    value        = "NORMAL"
  }
  nioc_nfs = {
    traffic_type = "NFS"
    value        = "NORMAL"
  }
  nioc_hbr = {
    traffic_type = "HBR"
    value        = "NORMAL"
  }
  nioc_fault = {
    traffic_type = "FAULTTOLERANCE"
    value        = "NORMAL"
  }
  nioc_iscsi = {
    traffic_type = "ISCSI"
    value        = "NORMAL"
  }
  vmnics = ["vmnic0",
    "vmnic1"
  ]
  networks = [
    "MANAGEMENT",
    "VSAN",
    "VMOTION"
  ]

}
#Cluster variables
vcf_instance_demo_cluster = {
  cluster_name = "demo-m01-cl01"
  resource_pool_management = {
    name         = "management-resources"
    network_type = "management"
  }
  resource_pool_network = {
    name         = "network-resources"
    network_type = "network"
  }
}
#PSC variables
vcf_instance_demo_psc = {
  psc_sso_domain = "vsphere.local"
}
#vCenter variables
vcf_instance_demo_vCenter = {
  vcenter_ip       = "192.168.1.125"
  vcenter_hostname = "demo-m01-vc02"
  vm_size          = "small"
}
#vSAN variables
vcf_instance_demo_vSAN = {
  datastore_name = "demo-m01-cl01-ds-vsan01"
}

#ESXi variables
vcf_instance_demo_esx_host1 = {
  credentials = {
    username = "root"
  }
  ip_address_private = {
    subnet     = "255.255.255.0"
    ip_address = "192.168.0.121"
    gateway    = "192.168.0.254"
  }
  hostname    = "demo-m01-esx10"
  vswitch     = "vSwitch0"
  association = "demo-m01-dc01"
}
vcf_instance_demo_esx_host2 = {
  credentials = {
    username = "root"
  }
  ip_address_private = {
    subnet     = "255.255.255.0"
    ip_address = "192.168.0.122"
    gateway    = "192.168.0.254"
  }
  hostname    = "demo-m01-esx11"
  vswitch     = "vSwitch0"
  association = "demo-m01-dc01"
}
vcf_instance_demo_esx_host3 = {
  credentials = {
    username = "root"
  }
  ip_address_private = {
    subnet     = "255.255.255.0"
    ip_address = "192.168.0.123"
    gateway    = "192.168.0.254"
  }
  hostname    = "demo-m01-esx12"
  vswitch     = "vSwitch0"
  association = "demo-m01-dc01"
}
vcf_instance_demo_esx_host4 = {
  credentials = {
    username = "root"
  }
  ip_address_private = {
    subnet     = "255.255.255.0"
    ip_address = "192.168.0.124"
    gateway    = "192.168.0.254"
  }
  hostname    = "demo-m01-esx13"
  vswitch     = "vSwitch0"
  association = "demo-m01-dc01"
}

# Licence variables
vcf_instance_demo_license_key = {
  nsx     = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
  vcenter = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
  vsan    = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
  esxi    = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
}


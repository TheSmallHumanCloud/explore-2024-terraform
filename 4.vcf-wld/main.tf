
#resource "vcf_network_pool" "domain_pool" {
#  name = "engineering-pool"
#  network {
#    gateway = "192.168.10.1"
#    mask    = "255.255.255.0"
#    mtu     = 9000
#    subnet  = "192.168.10.0"
#    type    = "VSAN"
#    vlan_id = 100
#    ip_pools {
#      start = "192.168.10.5"
#      end   = "192.168.10.50"
#    }
#  }
#}

resource "vcf_host" "host14" {
  fqdn            = var.vcf_host_host14_fqdn
  username        = var.vcf_host_host14_username
  password        = var.vcf_host_host14_pass
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host_host14_storage_type
}
resource "vcf_host" "host15" {
  fqdn            = var.vcf_host_host15_fqdn
  username        = var.vcf_host_host15_username
  password        = var.vcf_host_host15_pass
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host_host15_storage_type
}
resource "vcf_host" "host16" {
  fqdn            = var.vcf_host_host16_fqdn
  username        = var.vcf_host_host16_username
  password        = var.vcf_host_host16_pass
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host_host16_storage_type
}
resource "vcf_domain" "domain1" {
  name = var.vcf_domain_domain1_name
  vcenter_configuration {
    name            = var.vcf_domain_domain1_vcenter_configuration_name
    datacenter_name = var.vcf_domain_domain1_vcenter_configuration_datacenter_name
    root_password   = var.vcf_domain_domain1_vcenter_configuration_root_password
    vm_size         = var.vcf_domain_domain1_vcenter_configuration_vm_size
    storage_size    = var.vcf_domain_domain1_vcenter_configuration_storage_size
    ip_address      = var.vcf_domain_domain1_vcenter_configuration_ip_address
    subnet_mask     = var.vcf_domain_domain1_vcenter_configuration_subnet_mask
    gateway         = var.vcf_domain_domain1_vcenter_configuration_gateway
    fqdn            = var.vcf_domain_domain1_vcenter_configuration_fqdn
  }
  nsx_configuration {
    vip                        = var.vcf_domain_domain1_nsx_configuration_vip
    vip_fqdn                   = var.vcf_domain_domain1_nsx_configuration_vip_fqdn
    nsx_manager_admin_password = var.vcf_domain_domain1_nsx_configuration_nsx_manager_admin_password
    form_factor                = var.vcf_domain_domain1_nsx_configuration_form_factor
    license_key                = var.nsx_license_key
    nsx_manager_node {
      name        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node1_name
      ip_address  = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node1_ip_address
      fqdn        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node1_fqdn
      subnet_mask = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node1_subnet_mask
      gateway     = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node1_gateway
    }
    nsx_manager_node {
      name        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node2_name
      ip_address  = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node2_ip_address
      fqdn        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node2_fqdn
      subnet_mask = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node2_subnet_mask
      gateway     = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node2_gateway
    }
    nsx_manager_node {
      name        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node3_name
      ip_address  = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node3_ip_address
      fqdn        = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node3_fqdn
      subnet_mask = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node3_subnet_mask
      gateway     = var.vcf_domain_domain1_nsx_configuration_nsx_manager_node3_gateway
    }
  }
  cluster {
    name = var.vcf_domain_domain1_cluster_name
    host {
      id          = vcf_host.host14.id
      license_key = var.esxi_license_key
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host14_vmnic0_id
        vds_name = var.vcf_domain_domain1_cluster_host14_vmnic0_vds_name
      }
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host14_vmnic1_id
        vds_name = var.vcf_domain_domain1_cluster_host14_vmnic1_vds_name
      }
    }
    host {
      id          = vcf_host.host15.id
      license_key = var.esxi_license_key
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host15_vmnic0_id
        vds_name = var.vcf_domain_domain1_cluster_host15_vmnic0_vds_name
      }
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host15_vmnic1_id
        vds_name = var.vcf_domain_domain1_cluster_host15_vmnic1_vds_name
      }
    }
    host {
      id          = vcf_host.host16.id
      license_key = var.esxi_license_key
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host16_vmnic0_id
        vds_name = var.vcf_domain_domain1_cluster_host16_vmnic0_vds_name
      }
      vmnic {
        id       = var.vcf_domain_domain1_cluster_host16_vmnic1_id
        vds_name = var.vcf_domain_domain1_cluster_host16_vmnic1_vds_name
      }
    }
    vds {
      name = var.vcf_domain_domain1_vds_name
      portgroup {
        name           = var.vcf_domain_domain1_vds_portgroup1_name
        transport_type = var.vcf_domain_domain1_vds_portgroup1_transport_type
      }
      portgroup {
        name           = var.vcf_domain_domain1_vds_portgroup2_name
        transport_type = var.vcf_domain_domain1_vds_portgroup2_transport_type
      }
      portgroup {
        name           = var.vcf_domain_domain1_vds_portgroup3_name
        transport_type = var.vcf_domain_domain1_vds_portgroup3_transport_type
      }
    }
    vsan_datastore {
      datastore_name       = var.vcf_domain_domain1_vsan_datastore_name
      failures_to_tolerate = var.vcf_domain_domain1_vsan_failures_to_tolerate
      license_key          = var.vsan_license_key
    }
    geneve_vlan_id = var.nsx_manager_geneve_vlan_id
  }
}

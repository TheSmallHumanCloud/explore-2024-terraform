# VCF Instance Bringup
resource "vcf_instance" "demo" {
  instance_id                    = var.vcf_instance_demo_instance_id
  dv_switch_version              = var.vcf_instance_demo_dv_switch_version
  skip_esx_thumbprint_validation = var.vcf_instance_demo_skip_esx_thumbprint_validation
  management_pool_name           = var.vcf_instance_demo_management_pool_name
  ceip_enabled                   = var.vcf_instance_demo_ceip_enabled
  esx_license                    = var.vcf_instance_demo_license_key.esxi
  task_name                      = var.vcf_instance_demo_task_name
  sddc_manager {
    ip_address = var.vcf_instance_demo_sddc_manager_ip_address
    hostname   = var.vcf_instance_demo_sddc_manager_hostname
    root_user_credentials {
      username = var.vcf_instance_demo_sddc_manager_root_user_username
      password = var.sddc_manager_root_user_password
    }
    second_user_credentials {
      username = var.vcf_instance_demo_sddc_manager_secondary_user_username
      password = var.sddc_manager_secondary_user_password
    }
  }
  # NTP and DNS Configuration
  ntp_servers = [
    var.vcf_instance_demo_ntp
  ]
  dns {
    domain      = var.vcf_instance_demo_dns_domain
    name_server = var.vcf_instance_demo_dns_name_server
  }
  # Manangement Subnet Configuration
  network {
    subnet       = var.vcf_instance_demo_network_management.subnet
    vlan_id      = var.vcf_instance_demo_network_management.vlan_id
    mtu          = var.vcf_instance_demo_network_management.mtu
    network_type = var.vcf_instance_demo_network_management.network_type
    gateway      = var.vcf_instance_demo_network_management.gateway
  }
  # VM Managment Subnet Configuration
  network {
    subnet         = var.vcf_instance_demo_network_vm_management.subnet
    vlan_id        = var.vcf_instance_demo_network_vm_management.vlan_id
    mtu            = var.vcf_instance_demo_network_vm_management.mtu
    network_type   = var.vcf_instance_demo_network_vm_management.network_type
    gateway        = var.vcf_instance_demo_network_vm_management.gateway
    port_group_key = var.vcf_instance_demo_network_vm_management.port_group_key #Extra parameter needed as it is not a default subnet deployment.
  }
  # vMotion Subnet Configuration
  network {
    subnet       = var.vcf_instance_demo_network_vmotion.subnet
    vlan_id      = var.vcf_instance_demo_network_vmotion.vlan_id
    mtu          = var.vcf_instance_demo_network_vmotion.mtu
    network_type = var.vcf_instance_demo_network_vmotion.network_type
    gateway      = var.vcf_instance_demo_network_vmotion.gateway
    include_ip_address_ranges {
      start_ip_address = var.vcf_instance_demo_network_vmotion.include_ip_address_ranges.ip_address_ranges_start
      end_ip_address   = var.vcf_instance_demo_network_vmotion.include_ip_address_ranges.ip_address_ranges_end
    }
  }
  # vSAN Subnet Configuration
  network {
    subnet       = var.vcf_instance_demo_network_vsan.subnet
    vlan_id      = var.vcf_instance_demo_network_vsan.vlan_id
    mtu          = var.vcf_instance_demo_network_vsan.mtu
    network_type = var.vcf_instance_demo_network_vsan.network_type
    gateway      = var.vcf_instance_demo_network_vsan.gateway
    include_ip_address_ranges {
      start_ip_address = var.vcf_instance_demo_network_vsan.include_ip_address_ranges.ip_address_ranges_start
      end_ip_address   = var.vcf_instance_demo_network_vsan.include_ip_address_ranges.ip_address_ranges_end
    }
  }
  # NSX Configuration
  nsx {
    nsx_manager_size          = var.vcf_instance_demo_nsx.nsx_manager_size
    vip                       = var.vcf_instance_demo_nsx.vip
    vip_fqdn                  = var.vcf_instance_demo_nsx.vip_fqdn
    license                   = var.vcf_instance_demo_license_key.nsx
    transport_vlan_id         = var.vcf_instance_demo_nsx.transport_vlan_id
    root_nsx_manager_password = var.root_nsx_manager_password
    nsx_admin_password        = var.nsx_admin_password
    nsx_audit_password        = var.nsx_audit_password
    nsx_manager {
      hostname = var.vcf_instance_demo_nsx.nsx_manager_a.hostname
      ip       = var.vcf_instance_demo_nsx.nsx_manager_a.ip
    }
    nsx_manager {
      hostname = var.vcf_instance_demo_nsx.nsx_manager_b.hostname
      ip       = var.vcf_instance_demo_nsx.nsx_manager_b.ip
    }
    nsx_manager {
      hostname = var.vcf_instance_demo_nsx.nsx_manager_c.hostname
      ip       = var.vcf_instance_demo_nsx.nsx_manager_c.ip
    }
    ip_address_pool {
      name = var.vcf_instance_demo_nsx.ip_address_pool.name
      subnet {
        cidr    = var.vcf_instance_demo_nsx.ip_address_pool.subnet.cidr
        gateway = var.vcf_instance_demo_nsx.ip_address_pool.subnet.gateway
        ip_address_pool_range {
          start = var.vcf_instance_demo_nsx.ip_address_pool.subnet.ip_address_pool_range.start
          end   = var.vcf_instance_demo_nsx.ip_address_pool.subnet.ip_address_pool_range.end
        }
      }
    }
    overlay_transport_zone {
      zone_name    = var.vcf_instance_demo_nsx.overlay_transport_zone.zone_name
      network_name = var.vcf_instance_demo_nsx.overlay_transport_zone.network_name
    }
  }
  dvs {
    dvs_name = var.vcf_instance_demo_vds.dvs_name
    mtu      = var.vcf_instance_demo_vds.mtu
    # Network I/O Control Configuration. Configure all Traffic types [VSAN, VMOTION, VIRTUALMACHINE, MANAGEMENT, NFS, VDP, HBR, FAULTTOLERANCE, ISCSI]
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_vsan.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_vsan.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_vmotion.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_vmotion.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_vm.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_vm.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_management.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_management.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_vdp.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_vdp.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_nfs.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_nfs.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_hbr.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_hbr.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_fault.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_fault.value
    }
    nioc {
      traffic_type = var.vcf_instance_demo_vds.nioc_iscsi.traffic_type
      value        = var.vcf_instance_demo_vds.nioc_iscsi.value
    }
    vmnics   = var.vcf_instance_demo_vds.vmnics
    networks = var.vcf_instance_demo_vds.networks
  }
  # Cluster Configuration
  cluster {
    cluster_name = var.vcf_instance_demo_cluster.cluster_name
    # Requires both management and network as a minimum.
    resource_pool {
      name = var.vcf_instance_demo_cluster.resource_pool_management.name
      type = var.vcf_instance_demo_cluster.resource_pool_management.network_type
    }
    resource_pool {
      name = var.vcf_instance_demo_cluster.resource_pool_network.name
      type = var.vcf_instance_demo_cluster.resource_pool_network.network_type
    }
  }
  # PSC Configuration
  psc {
    psc_sso_domain          = var.vcf_instance_demo_psc.psc_sso_domain
    admin_user_sso_password = var.admin_user_sso_password
  }
  # vCentre Configurations
  vcenter {
    vcenter_ip            = var.vcf_instance_demo_vCenter.vcenter_ip
    vcenter_hostname      = var.vcf_instance_demo_vCenter.vcenter_hostname
    license               = var.vcf_instance_demo_license_key.vcenter
    root_vcenter_password = var.root_vcenter_password
    vm_size               = var.vcf_instance_demo_vCenter.vm_size
  }
  #vSAN Configurations
  vsan {
    license        = var.vcf_instance_demo_license_key.vsan
    datastore_name = var.vcf_instance_demo_vSAN.datastore_name
  }
  # ESXi Host Configurations
  host {
    credentials {
      username = var.vcf_instance_demo_esx_host1.credentials.username
      password = var.esx_host1_password
    }
    ip_address_private {
      subnet     = var.vcf_instance_demo_esx_host1.ip_address_private.subnet
      ip_address = var.vcf_instance_demo_esx_host1.ip_address_private.ip_address
      gateway    = var.vcf_instance_demo_esx_host1.ip_address_private.gateway
    }
    hostname    = var.vcf_instance_demo_esx_host1.hostname
    vswitch     = var.vcf_instance_demo_esx_host1.vswitch
    association = var.vcf_instance_demo_esx_host1.association
  }
  host {
    credentials {
      username = var.vcf_instance_demo_esx_host2.credentials.username
      password = var.esx_host2_password
    }
    ip_address_private {
      subnet     = var.vcf_instance_demo_esx_host2.ip_address_private.subnet
      ip_address = var.vcf_instance_demo_esx_host2.ip_address_private.ip_address
      gateway    = var.vcf_instance_demo_esx_host2.ip_address_private.gateway
    }
    hostname    = var.vcf_instance_demo_esx_host2.hostname
    vswitch     = var.vcf_instance_demo_esx_host2.vswitch
    association = var.vcf_instance_demo_esx_host2.association
  }
  host {
    credentials {
      username = var.vcf_instance_demo_esx_host3.credentials.username
      password = var.esx_host3_password
    }
    ip_address_private {
      subnet     = var.vcf_instance_demo_esx_host3.ip_address_private.subnet
      ip_address = var.vcf_instance_demo_esx_host3.ip_address_private.ip_address
      gateway    = var.vcf_instance_demo_esx_host3.ip_address_private.gateway
    }
    hostname    = var.vcf_instance_demo_esx_host3.hostname
    vswitch     = var.vcf_instance_demo_esx_host3.vswitch
    association = var.vcf_instance_demo_esx_host3.association
  }
  host {
    credentials {
      username = var.vcf_instance_demo_esx_host4.credentials.username
      password = var.esx_host4_password
    }
    ip_address_private {
      subnet     = var.vcf_instance_demo_esx_host4.ip_address_private.subnet
      ip_address = var.vcf_instance_demo_esx_host4.ip_address_private.ip_address
      gateway    = var.vcf_instance_demo_esx_host4.ip_address_private.gateway
    }
    hostname    = var.vcf_instance_demo_esx_host4.hostname
    vswitch     = var.vcf_instance_demo_esx_host4.vswitch
    association = var.vcf_instance_demo_esx_host4.association
  }
}

output "sddc-ip" {
  value = vcf_instance.demo.sddc_manager_fqdn
}

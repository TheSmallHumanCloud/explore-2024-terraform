# Provider variables
sddc_manager_host = "demo-vcf02.demo.local"
vcf_edge_cluster_demo = {
  name              = "demo-edge-01"
  form_factor       = "MEDIUM"
  mtu               = "9000"
  profile_type      = "DEFAULT"
  high_availability = "ACTIVE_ACTIVE"
  routing_type      = "EBGP"
  tier0_name        = "demo-tier-0"
  tier1_name        = "demo-tier-1"
  asn               = 65002
  edge_node1 = {
    name                 = "demo-m01-edge-03.demo.local"
    management_gateway   = "192.168.1.254"
    tep1_ip              = "192.168.5.50/24"
    tep2_ip              = "192.168.5.51/24"
    tep_gateway          = "192.168.5.254"
    tep_vlan             = 155
    compute_cluster_name = "demo-m01-cl01"
    inter_rack_cluster   = false
    uplink1 = {
      interface_ip = "192.168.6.50/24"
      vlan         = 156
      bgp_peer = {
        asn = 65001
        ip  = "192.168.6.254/24"
      }
    }
    uplink2 = {
      interface_ip = "192.168.7.50/24"
      vlan         = 157
      bgp_peer = {
        asn = 65001
        ip  = "192.168.7.254/24"
      }
    }
  }
  edge_node2 = {
    name                 = "demo-m01-edge-04.demo.local"
    management_ip        = "192.168.1.133/24"
    management_gateway   = "192.168.1.254"
    tep1_ip              = "192.168.5.52/24"
    tep2_ip              = "192.168.5.53/24"
    tep_gateway          = "192.168.5.254"
    tep_vlan             = 155
    compute_cluster_name = "demo-m01-cl01"
    inter_rack_cluster   = false
    uplink1 = {
      interface_ip = "192.168.6.51/24"
      vlan         = 156
      bgp_peer = {
        asn = 65001
        ip  = "192.168.6.254/24"
      }
    }
    uplink2 = {
      interface_ip = "192.168.7.51/24"
      vlan         = 157
      bgp_peer = {
        asn = 65001
        ip  = "192.168.7.254/24"
      }
    }
  }
}
vcf_edge_cluster_demo_edge_node1_management_ip = "192.168.1.132/24"

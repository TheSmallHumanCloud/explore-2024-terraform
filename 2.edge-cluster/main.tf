resource "vcf_edge_cluster" "demo" {
  admin_password    = var.vcf_edge_cluster_demo_admin_password
  audit_password    = var.vcf_edge_cluster_demo_audit_password
  root_password     = var.vcf_edge_cluster_demo_root_password
  name              = var.vcf_edge_cluster_demo.name
  form_factor       = var.vcf_edge_cluster_demo.form_factor
  mtu               = var.vcf_edge_cluster_demo.mtu
  profile_type      = var.vcf_edge_cluster_demo.profile_type
  high_availability = var.vcf_edge_cluster_demo.high_availability
  routing_type      = var.vcf_edge_cluster_demo.routing_type
  tier0_name        = var.vcf_edge_cluster_demo.tier0_name
  tier1_name        = var.vcf_edge_cluster_demo.tier1_name
  asn               = var.vcf_edge_cluster_demo.asn
  edge_node {
    admin_password       = var.vcf_edge_cluster_demo_edge_node_1_admin_password
    audit_password       = var.vcf_edge_cluster_demo_edge_node_1_audit_password
    root_password        = var.vcf_edge_cluster_demo_edge_node_1_root_password
    name                 = var.vcf_edge_cluster_demo.edge_node1.name
    management_ip        = var.vcf_edge_cluster_demo_edge_node1_management_ip
    management_gateway   = var.vcf_edge_cluster_demo.edge_node1.management_gateway
    tep1_ip              = var.vcf_edge_cluster_demo.edge_node1.tep1_ip
    tep2_ip              = var.vcf_edge_cluster_demo.edge_node1.tep2_ip
    tep_gateway          = var.vcf_edge_cluster_demo.edge_node1.tep_gateway
    tep_vlan             = var.vcf_edge_cluster_demo.edge_node1.tep_vlan
    compute_cluster_name = var.vcf_edge_cluster_demo.edge_node1.compute_cluster_name
    inter_rack_cluster   = var.vcf_edge_cluster_demo.edge_node1.inter_rack_cluster
    uplink {
      interface_ip = var.vcf_edge_cluster_demo.edge_node1.uplink1.interface_ip
      vlan         = var.vcf_edge_cluster_demo.edge_node1.uplink1.vlan
      bgp_peer {
        asn      = var.vcf_edge_cluster_demo.edge_node1.uplink1.bgp_peer.asn
        ip       = var.vcf_edge_cluster_demo.edge_node1.uplink1.bgp_peer.ip
        password = var.vcf_edge_cluster_demo_bgp_password
      }
    }
    uplink {
      interface_ip = var.vcf_edge_cluster_demo.edge_node1.uplink2.interface_ip
      vlan         = var.vcf_edge_cluster_demo.edge_node1.uplink2.vlan
      bgp_peer {
        asn      = var.vcf_edge_cluster_demo.edge_node1.uplink2.bgp_peer.asn
        ip       = var.vcf_edge_cluster_demo.edge_node1.uplink2.bgp_peer.ip
        password = var.vcf_edge_cluster_demo_bgp_password
      }
    }
  }
  edge_node {
    admin_password       = var.vcf_edge_cluster_demo_edge_node_2_admin_password
    audit_password       = var.vcf_edge_cluster_demo_edge_node_2_audit_password
    root_password        = var.vcf_edge_cluster_demo_edge_node_2_root_password
    name                 = var.vcf_edge_cluster_demo.edge_node2.name
    management_ip        = var.vcf_edge_cluster_demo.edge_node2.management_ip
    management_gateway   = var.vcf_edge_cluster_demo.edge_node2.management_gateway
    tep1_ip              = var.vcf_edge_cluster_demo.edge_node2.tep1_ip
    tep2_ip              = var.vcf_edge_cluster_demo.edge_node2.tep2_ip
    tep_gateway          = var.vcf_edge_cluster_demo.edge_node2.tep_gateway
    tep_vlan             = var.vcf_edge_cluster_demo.edge_node2.tep_vlan
    compute_cluster_name = var.vcf_edge_cluster_demo.edge_node1.compute_cluster_name
    inter_rack_cluster   = var.vcf_edge_cluster_demo.edge_node2.inter_rack_cluster
    uplink {
      interface_ip = var.vcf_edge_cluster_demo.edge_node2.uplink1.interface_ip
      vlan         = var.vcf_edge_cluster_demo.edge_node2.uplink1.vlan
      bgp_peer {
        asn      = var.vcf_edge_cluster_demo.edge_node2.uplink1.bgp_peer.asn
        ip       = var.vcf_edge_cluster_demo.edge_node2.uplink1.bgp_peer.ip
        password = var.vcf_edge_cluster_demo_bgp_password
      }
    }
    uplink {
      interface_ip = var.vcf_edge_cluster_demo.edge_node2.uplink2.interface_ip
      vlan         = var.vcf_edge_cluster_demo.edge_node2.uplink2.vlan
      bgp_peer {
        asn      = var.vcf_edge_cluster_demo.edge_node2.uplink2.bgp_peer.asn
        ip       = var.vcf_edge_cluster_demo.edge_node2.uplink2.bgp_peer.ip
        password = var.vcf_edge_cluster_demo_bgp_password
      }
    }
  }
}

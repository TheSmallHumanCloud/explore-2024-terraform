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
variable "vcf_edge_cluster_demo_admin_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_audit_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_root_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_1_admin_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_1_audit_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_1_root_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_2_admin_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_2_audit_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_edge_node_2_root_password" {
  sensitive = true
}
variable "vcf_edge_cluster_demo_bgp_password" {
  sensitive = true
}

# Edge cluster variables
variable "vcf_edge_cluster_demo" {
  description = "Edge Cluster configuration details"
}
variable "vcf_edge_cluster_demo_edge_node1_management_ip" {
  description = "Management IP for Edge Node 1"
  type        = string
  validation {
    condition     = can(cidrhost(var.vcf_edge_cluster_demo_edge_node1_management_ip, 0))
    error_message = "Must specify IP in CIDR format .eg. 192.168.0.100/24"
  }
}

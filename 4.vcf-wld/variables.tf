##Licenses
variable "nsx_license_key" {
  description = "NSX license to be used"
  type        = string
  sensitive   = true
}

variable "esxi_license_key" {
  description = "License key for an ESXi host in the free pool"
  type        = string
  sensitive   = true
}

variable "vsan_license_key" {
  description = "vSAN license key to be used"
  type        = string
  sensitive   = true
}

##SDDC Manager
variable "sddc_manager_username" {
  description = "Username used to authenticate against an SDDC Manager instance"
  type        = string
  sensitive   = true
}

variable "sddc_manager_password" {
  description = "Password used to authenticate against an SDDC Manager instance"
  type        = string
  sensitive   = true
}

variable "sddc_manager_host" {
  description = "Fully qualified domain name of an SDDC Manager instance"
  type        = string
}

variable "vcf_domain_domain1_name" {
  description = "VCF WLD Domain Name"
  type        = string
}

##Host Details to Commission
variable "vcf_host_host14_fqdn" {
  description = "Fully qualified domain name of ESXi host 14"
  type        = string
}

variable "vcf_host_host14_username" {
  description = "Username to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host14_pass" {
  description = "Password to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host14_storage_type" {
  description = "Storage Type for ESXi host 14"
  type        = string
}

variable "vcf_host_host15_fqdn" {
  description = "Fully qualified domain name of ESXi host 14"
  type        = string
}

variable "vcf_host_host15_username" {
  description = "Username to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host15_pass" {
  description = "Password to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host15_storage_type" {
  description = "Storage Type for ESXi host 14"
  type        = string
}

variable "vcf_host_host16_fqdn" {
  description = "Fully qualified domain name of ESXi host 14"
  type        = string
}

variable "vcf_host_host16_username" {
  description = "Username to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host16_pass" {
  description = "Password to authenticate to the ESXi host 14"
  type        = string
  sensitive   = true
}

variable "vcf_host_host16_storage_type" {
  description = "Storage Type for ESXi host 14"
  type        = string
}

##vCenter Details
variable "vcf_domain_domain1_vcenter_configuration_name" {
  description = "vCenter Name"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_root_password" {
  description = "vCenter Appliance Root Password"
  type        = string
  sensitive   = true
}

variable "vcf_domain_domain1_vcenter_configuration_datacenter_name" {
  description = "vCenter DataCenter Name"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_vm_size" {
  description = "vCenter Appliance Size"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_storage_size" {
  description = "vCenter Appliance Storage Size"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_ip_address" {
  description = "vCenter Appliance IP Address"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_subnet_mask" {
  description = "vCenter Appliance Subnet Mask"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_gateway" {
  description = "vCenter Appliance IP Gateway"
  type        = string
}

variable "vcf_domain_domain1_vcenter_configuration_fqdn" {
  description = "vCenter Appliance FQDN"
  type        = string
}

##NSX Config Details
variable "vcf_domain_domain1_nsx_configuration_vip" {
  description = "NSX Manager VIP"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_vip_fqdn" {
  description = "NSX Manager FQDN"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_admin_password" {
  description = "NSX Manager admin user password"
  type        = string
  sensitive   = true
}

variable "vcf_domain_domain1_nsx_configuration_form_factor" {
  description = "NSX Manager form factor size"
  type        = string
}

##NSX Manager Node 1

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node1_name" {
  description = "NSX Manager node 1 name"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node1_ip_address" {
  description = "NSX Manager node 1 IP Address"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node1_fqdn" {
  description = "NSX Manager node 1 FQDN"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node1_subnet_mask" {
  description = "NSX Manager node 1 name Subnet Mask"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node1_gateway" {
  description = "NSX Manager node 1 gateway"
  type        = string
}

##NSX Manager Node 2

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node2_name" {
  description = "NSX Manager node 2 name"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node2_ip_address" {
  description = "NSX Manager node 2 IP Address"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node2_fqdn" {
  description = "NSX Manager node 2 FQDN"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node2_subnet_mask" {
  description = "NSX Manager node 2 name Subnet Mask"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node2_gateway" {
  description = "NSX Manager node 3 gateway"
  type        = string
}

##NSX Manager Node 3

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node3_name" {
  description = "NSX Manager node 3 name"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node3_ip_address" {
  description = "NSX Manager node 2 IP Address"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node3_fqdn" {
  description = "NSX Manager node 3 FQDN"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node3_subnet_mask" {
  description = "NSX Manager node 2 name Subnet Mask"
  type        = string
}

variable "vcf_domain_domain1_nsx_configuration_nsx_manager_node3_gateway" {
  description = "NSX Manager node 3 gateway"
  type        = string
}

variable "nsx_manager_geneve_vlan_id" {
  description = "NSX Manager GeneveID"
  type        = number
}

##Cluster Details

variable "vcf_domain_domain1_cluster_name" {
  description = "WLD Cluster Name"
  type        = string
}

##Cluster Host Details
##Host 14
variable "vcf_domain_domain1_cluster_host14_vmnic0_id" {
  description = "WLD Cluster Host 14 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host14_vmnic0_vds_name" {
  description = "WLD Cluster Host 14 VDS Name Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host14_vmnic1_id" {
  description = "WLD Cluster Host 14 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host14_vmnic1_vds_name" {
  description = "WLD Cluster Host 14 VDS Name Mapping"
  type        = string
}

##Host2
variable "vcf_domain_domain1_cluster_host15_vmnic0_id" {
  description = "WLD Cluster Host 15 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host15_vmnic0_vds_name" {
  description = "WLD Cluster Host 15 VDS Name Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host15_vmnic1_id" {
  description = "WLD Cluster Host 15 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host15_vmnic1_vds_name" {
  description = "WLD Cluster Host 15 VDS Name Mapping"
  type        = string
}

##Host3
variable "vcf_domain_domain1_cluster_host16_vmnic0_id" {
  description = "WLD Cluster Host 16 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host16_vmnic0_vds_name" {
  description = "WLD Cluster Host 16 VDS Name Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host16_vmnic1_id" {
  description = "WLD Cluster Host 16 NIC to VDS Mapping"
  type        = string
}

variable "vcf_domain_domain1_cluster_host16_vmnic1_vds_name" {
  description = "WLD Cluster Host 16 VDS Name Mapping"
  type        = string
}

##vCenter vDS

variable "vcf_domain_domain1_vds_name" {
  description = "VCF WLD VDS01 Name"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup1_name" {
  description = "VCF WLD VDS01 Portgroup1 Name"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup1_transport_type" {
  description = "VCF WLD VDS01 Portgroup1 Transport Type"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup2_name" {
  description = "VCF WLD VDS01 Portgroup2 Name"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup2_transport_type" {
  description = "VCF WLD VDS01 Portgroup2 Transport Type"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup3_name" {
  description = "VCF WLD VDS01 Portgroup3 Name"
  type        = string
}

variable "vcf_domain_domain1_vds_portgroup3_transport_type" {
  description = "VCF WLD VDS01 Portgroup3 Transport Type"
  type        = string
}

##vSAN

variable "vcf_domain_domain1_vsan_datastore_name" {
  description = "VCF WLD vSAN Datastore Name"
  type        = string
}

variable "vcf_domain_domain1_vsan_failures_to_tolerate" {
  description = "VCF WLD vSAN datastore Failures to Tolerate"
  type        = number
}


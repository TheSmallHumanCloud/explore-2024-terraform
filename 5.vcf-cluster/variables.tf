##Licenses
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

##SDDC Manager Details
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

##host 17
variable "vcf_host17_fqdn" {
  description = "Fully qualified domain name of ESXi host 17"
  type        = string
}

variable "vcf_host17_username" {
  description = "Username to authenticate to the ESXi host 17"
  type        = string
  sensitive   = true
}

variable "vcf_host17_password" {
  description = "Password to authenticate to the ESXi host 17"
  type        = string
  sensitive   = true
}

variable "vcf_host17_storage_type" {
  description = "Storage Type for ESXi host 17"
  type        = string
}

##host 18
variable "vcf_host18_fqdn" {
  description = "Fully qualified domain name of ESXi host 18"
}

variable "vcf_host18_username" {
  description = "Username to authenticate to the ESXi host 18"
  type        = string
  sensitive   = true
}

variable "vcf_host18_password" {
  description = "Password to authenticate to the ESXi host 18"
  type        = string
  sensitive   = true
}

variable "vcf_host18_storage_type" {
  description = "Storage Type for ESXi host 18"
  type        = string
}

##host 19
variable "vcf_host19_fqdn" {
  description = "Fully qualified domain name of ESXi host 19"
  type        = string
}

variable "vcf_host19_username" {
  description = "Username to authenticate to the ESXi host 19"
  type        = string
  sensitive   = true
}

variable "vcf_host19_password" {
  description = "Password to authenticate to the ESXi host 19"
  type        = string
  sensitive   = true
}

variable "vcf_host19_storage_type" {
  description = "Storage Type for ESXi host 19"
  type        = string
}

##Cluster
variable "vcf_cluster_cluster1_name" {
  description = "WLD Cluster Name"
  type        = string
}

##Clsuter Hosts
##Host17
variable "vcf_cluster_cluster1_host17_vmnic0_id" {
  description = "WLD Cluster Host 17 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host17_vmnic0_vds_name" {
  description = "WLD Cluster Host 17 VDS Name Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host17_vmnic1_id" {
  description = "WLD Cluster Host 17 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host17_vmnic1_vds_name" {
  description = "WLD Cluster Host 17 VDS Name Mapping"
  type        = string
}


##Host18
variable "vcf_cluster_cluster1_host18_vmnic0_id" {
  description = "WLD Cluster Host 18 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host18_vmnic0_vds_name" {
  description = "WLD Cluster Host 18 VDS Name Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host18_vmnic1_id" {
  description = "WLD Cluster Host 18 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host18_vmnic1_vds_name" {
  description = "WLD Cluster Host 18 VDS Name Mapping"
  type        = string
}

##Host19
variable "vcf_cluster_cluster1_host19_vmnic0_id" {
  description = "WLD Cluster Host 19 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host19_vmnic0_vds_name" {
  description = "WLD Cluster Host 19 VDS Name Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host19_vmnic1_id" {
  description = "WLD Cluster Host 19 NIC to VDS Mapping"
  type        = string
}

variable "vcf_cluster_cluster1_host19_vmnic1_vds_name" {
  description = "WLD Cluster Host 19 VDS Name Mapping"
  type        = string
}

##VDS
variable "vcf_cluster_cluster1_vds_name" {
  description = "VCF WLD Cluster VDS Name"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup1_name" {
  description = "VCF WLD Cluster VDS Portgroup 1 Name"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup1_transport_type" {
  description = "VCF WLD Cluster VDS Portgroup 1 Transport Type"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup2_name" {
  description = "VCF WLD Cluster VDS Portgroup 2 Name"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup2_transport_type" {
  description = "VCF WLD Cluster VDS Portgroup 2 Transport Type"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup3_name" {
  description = "VCF WLD Cluster VDS Portgroup 3 Name"
  type        = string
}

variable "vcf_cluster_cluster1_vds_portgroup3_transport_type" {
  description = "VCF WLD Cluster VDS Portgroup 3 Transport Type"
  type        = string
}

##vSAN
variable "vcf_cluster_cluster1_vsan_datastore_datastore_name" {
  description = "VCF WLD Cluster vSAN Datastore Name"
  type        = string
}
variable "vcf_cluster_cluster1_vsan_datastore_failures_to_tolerate" {
  description = "VCF WLD Cluster vSAN datastore Failures to Tolerate"
  type        = string
}




#Licence variables
nsx_license_key  = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
vsan_license_key = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
esxi_license_key = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"

##SDDC Manager Details
sddc_manager_username = "administrator@vsphere.local"
sddc_manager_host     = "demo-vcf02.demo.local"

##Host Details to Commission
#Host14
vcf_host_host14_fqdn         = "demo-m01-esx14.demo.local"
vcf_host_host14_username     = "root"
vcf_host_host14_storage_type = "VSAN"

#Host15
vcf_host_host15_fqdn         = "demo-m01-esx15.demo.local"
vcf_host_host15_username     = "root"
vcf_host_host15_storage_type = "VSAN"

#Host16
vcf_host_host16_fqdn         = "demo-m01-esx16.demo.local"
vcf_host_host16_username     = "root"
vcf_host_host16_storage_type = "VSAN"

##VCF WLD vCenter Details
vcf_domain_domain1_name                                  = "demo-w01"
vcf_domain_domain1_vcenter_configuration_name            = "demo-w01-vc03"
vcf_domain_domain1_vcenter_configuration_datacenter_name = "demo-w01-dc01"
vcf_domain_domain1_vcenter_configuration_vm_size         = "small"
vcf_domain_domain1_vcenter_configuration_storage_size    = "lstorage"
vcf_domain_domain1_vcenter_configuration_ip_address      = "192.168.1.135"
vcf_domain_domain1_vcenter_configuration_subnet_mask     = "255.255.255.0"
vcf_domain_domain1_vcenter_configuration_gateway         = "192.168.1.254"
vcf_domain_domain1_vcenter_configuration_fqdn            = "demo-w01-vc03.demo.local"

##VCF WLD NSX Details
vcf_domain_domain1_nsx_configuration_vip                           = "192.168.1.136"
vcf_domain_domain1_nsx_configuration_vip_fqdn                      = "demo-w01-nsx03.demo.local"
vcf_domain_domain1_nsx_configuration_form_factor                   = "small"
vcf_domain_domain1_nsx_configuration_nsx_manager_node1_name        = "demo-w01-nsx03a"
vcf_domain_domain1_nsx_configuration_nsx_manager_node1_ip_address  = "192.168.1.137"
vcf_domain_domain1_nsx_configuration_nsx_manager_node1_fqdn        = "demo-w01-nsx03a.demo.local"
vcf_domain_domain1_nsx_configuration_nsx_manager_node1_subnet_mask = "255.255.255.0"
vcf_domain_domain1_nsx_configuration_nsx_manager_node1_gateway     = "192.168.1.254"
vcf_domain_domain1_nsx_configuration_nsx_manager_node2_name        = "demo-w01-nsx03b"
vcf_domain_domain1_nsx_configuration_nsx_manager_node2_ip_address  = "192.168.1.138"
vcf_domain_domain1_nsx_configuration_nsx_manager_node2_fqdn        = "demo-w01-nsx03b.demo.local"
vcf_domain_domain1_nsx_configuration_nsx_manager_node2_subnet_mask = "255.255.255.0"
vcf_domain_domain1_nsx_configuration_nsx_manager_node2_gateway     = "192.168.1.254"
vcf_domain_domain1_nsx_configuration_nsx_manager_node3_name        = "demo-w01-nsx03c"
vcf_domain_domain1_nsx_configuration_nsx_manager_node3_ip_address  = "192.168.1.139"
vcf_domain_domain1_nsx_configuration_nsx_manager_node3_fqdn        = "demo-w01-nsx03c.demo.local"
vcf_domain_domain1_nsx_configuration_nsx_manager_node3_subnet_mask = "255.255.255.0"
vcf_domain_domain1_nsx_configuration_nsx_manager_node3_gateway     = "192.168.1.254"
nsx_manager_geneve_vlan_id                                         = 2

##VCF WLD vCenter Cluster Details

vcf_domain_domain1_cluster_name = "demo-w01-cl01"


##VCF WLD vCenter Cluster Host Details
##Host14
vcf_domain_domain1_cluster_host14_vmnic0_id       = "vmnic0"
vcf_domain_domain1_cluster_host14_vmnic0_vds_name = "demo-w01-cl01-vds01"
vcf_domain_domain1_cluster_host14_vmnic1_id       = "vmnic1"
vcf_domain_domain1_cluster_host14_vmnic1_vds_name = "demo-w01-cl01-vds01"


##Host15
vcf_domain_domain1_cluster_host15_vmnic0_id       = "vmnic0"
vcf_domain_domain1_cluster_host15_vmnic0_vds_name = "demo-w01-cl01-vds01"
vcf_domain_domain1_cluster_host15_vmnic1_id       = "vmnic1"
vcf_domain_domain1_cluster_host15_vmnic1_vds_name = "demo-w01-cl01-vds01"

##Host16
vcf_domain_domain1_cluster_host16_vmnic0_id       = "vmnic0"
vcf_domain_domain1_cluster_host16_vmnic0_vds_name = "demo-w01-cl01-vds01"
vcf_domain_domain1_cluster_host16_vmnic1_id       = "vmnic1"
vcf_domain_domain1_cluster_host16_vmnic1_vds_name = "demo-w01-cl01-vds01"

##vCenter vDS
vcf_domain_domain1_vds_name                      = "demo-w01-cl01-vds01"
vcf_domain_domain1_vds_portgroup1_name           = "demo-w01-cl01-vds01-mgmt"
vcf_domain_domain1_vds_portgroup1_transport_type = "MANAGEMENT"
vcf_domain_domain1_vds_portgroup2_name           = "demo-w01-cl01-vds01-vsan"
vcf_domain_domain1_vds_portgroup2_transport_type = "VSAN"
vcf_domain_domain1_vds_portgroup3_name           = "demo-w01-cl01-vds01-vmotion"
vcf_domain_domain1_vds_portgroup3_transport_type = "VMOTION"

##VCF WLD vSAN Details

vcf_domain_domain1_vsan_datastore_name       = "demo-w01-cl01-ds-vsan01"
vcf_domain_domain1_vsan_failures_to_tolerate = 1

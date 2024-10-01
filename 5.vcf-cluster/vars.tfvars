#Licence variables
vsan_license_key = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"
esxi_license_key = "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"

##SDDC Manager Details
sddc_manager_username = "administrator@vsphere.local"
sddc_manager_host     = "demo-vcf02.demo.local"

##host 17
vcf_host17_fqdn         = "demo-m01-esx17.demo.local"
vcf_host17_username     = "root"
vcf_host17_storage_type = "VSAN"

##host 18
vcf_host18_fqdn         = "demo-m01-esx18.demo.local"
vcf_host18_username     = "root"
vcf_host18_storage_type = "VSAN"

##host 19
vcf_host19_fqdn         = "demo-m01-esx19.demo.local"
vcf_host19_username     = "root"
vcf_host19_storage_type = "VSAN"

##Cluster
vcf_cluster_cluster1_name = "demo-w01-cl02"


##Clsuter Hosts
##Host17
vcf_cluster_cluster1_host17_vmnic0_id       = "vmnic0"
vcf_cluster_cluster1_host17_vmnic0_vds_name = "demo-w01-cl02-vds02"
vcf_cluster_cluster1_host17_vmnic1_id       = "vmnic1"
vcf_cluster_cluster1_host17_vmnic1_vds_name = "demo-w01-cl02-vds02"

##Host18
vcf_cluster_cluster1_host18_vmnic0_id       = "vmnic0"
vcf_cluster_cluster1_host18_vmnic0_vds_name = "demo-w01-cl02-vds02"
vcf_cluster_cluster1_host18_vmnic1_id       = "vmnic1"
vcf_cluster_cluster1_host18_vmnic1_vds_name = "demo-w01-cl02-vds02"

##Host19
vcf_cluster_cluster1_host19_vmnic0_id       = "vmnic0"
vcf_cluster_cluster1_host19_vmnic0_vds_name = "demo-w01-cl02-vds02"
vcf_cluster_cluster1_host19_vmnic1_id       = "vmnic1"
vcf_cluster_cluster1_host19_vmnic1_vds_name = "demo-w01-cl02-vds02"

##VDS
vcf_cluster_cluster1_vds_name                      = "demo-w01-cl02-vds02"
vcf_cluster_cluster1_vds_portgroup1_name           = "demo-w01-cl02-vds02-mgmt"
vcf_cluster_cluster1_vds_portgroup1_transport_type = "MANAGEMENT"
vcf_cluster_cluster1_vds_portgroup2_name           = "demo-w01-cl02-vds02-vsan"
vcf_cluster_cluster1_vds_portgroup2_transport_type = "VSAN"
vcf_cluster_cluster1_vds_portgroup3_name           = "demo-w01-cl02-vds02-vmotion"
vcf_cluster_cluster1_vds_portgroup3_transport_type = "VMOTION"

##vSAN
vcf_cluster_cluster1_vsan_datastore_datastore_name       = "demo-w01-cl02-ds-vsan01"
vcf_cluster_cluster1_vsan_datastore_failures_to_tolerate = "1"



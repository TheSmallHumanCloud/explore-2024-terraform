resource "vcf_host" "host17" {
  fqdn            = var.vcf_host17_fqdn
  username        = var.vcf_host17_username
  password        = var.vcf_host17_password
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host17_storage_type
}

resource "vcf_host" "host18" {
  fqdn            = var.vcf_host18_fqdn
  username        = var.vcf_host18_username
  password        = var.vcf_host18_password
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host18_storage_type
}

resource "vcf_host" "host19" {
  fqdn            = var.vcf_host19_fqdn
  username        = var.vcf_host19_username
  password        = var.vcf_host19_password
  network_pool_id = local.network_pool_id.elements[0].id
  storage_type    = var.vcf_host19_storage_type
}

resource "vcf_cluster" "cluster1" {
  domain_id = local.domain_id.elements[1].id
  name      = var.vcf_cluster_cluster1_name
  host {
    id          = vcf_host.host17.id
    license_key = var.esxi_license_key
    vmnic {
      id       = var.vcf_cluster_cluster1_host17_vmnic0_id
      vds_name = var.vcf_cluster_cluster1_host17_vmnic0_vds_name
    }
    vmnic {
      id       = var.vcf_cluster_cluster1_host17_vmnic1_id
      vds_name = var.vcf_cluster_cluster1_host17_vmnic1_vds_name
    }
  }
  host {
    id          = vcf_host.host18.id
    license_key = var.esxi_license_key
    vmnic {
      id       = var.vcf_cluster_cluster1_host18_vmnic0_id
      vds_name = var.vcf_cluster_cluster1_host18_vmnic0_vds_name
    }
    vmnic {
      id       = var.vcf_cluster_cluster1_host18_vmnic1_id
      vds_name = var.vcf_cluster_cluster1_host18_vmnic1_vds_name
    }
  }
  host {
    id          = vcf_host.host19.id
    license_key = var.esxi_license_key
    vmnic {
      id       = var.vcf_cluster_cluster1_host19_vmnic0_id
      vds_name = var.vcf_cluster_cluster1_host19_vmnic0_vds_name
    }
    vmnic {
      id       = var.vcf_cluster_cluster1_host19_vmnic1_id
      vds_name = var.vcf_cluster_cluster1_host19_vmnic1_vds_name
    }
  }
  vds {
    name = var.vcf_cluster_cluster1_vds_name
    portgroup {
      name           = var.vcf_cluster_cluster1_vds_portgroup1_name
      transport_type = var.vcf_cluster_cluster1_vds_portgroup1_transport_type
    }
    portgroup {
      name           = var.vcf_cluster_cluster1_vds_portgroup2_name
      transport_type = var.vcf_cluster_cluster1_vds_portgroup2_transport_type
    }
    portgroup {
      name           = var.vcf_cluster_cluster1_vds_portgroup3_name
      transport_type = var.vcf_cluster_cluster1_vds_portgroup3_transport_type
    }
  }
  vsan_datastore {
    datastore_name       = var.vcf_cluster_cluster1_vsan_datastore_datastore_name
    failures_to_tolerate = var.vcf_cluster_cluster1_vsan_datastore_failures_to_tolerate
    license_key          = var.vsan_license_key
  }
}

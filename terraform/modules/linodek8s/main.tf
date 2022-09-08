terraform {
  required_version = ">= 0.12"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = ">=1.29.2"
    }
  }
}

resource "linode_lke_cluster" "k8s_ter" {
  label       = var.k8s_cluster_name
  k8s_version = var.k8s_version
  region      = var.cluster_region

  pool {
    type  = var.cluster_pool_type
    count = var.cluster_pool_min

    autoscaler {
      min = var.cluster_pool_min
      max = var.cluster_pool_max
    }
  }

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    ignore_changes = [ 
      region, 
      k8s_version, 
      pool.0.count # Prevent the count field from overriding autoscaler-created nodes
    ]
  }
}
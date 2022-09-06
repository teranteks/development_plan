terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = ">=1.29.2"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_lke_cluster" "k8s_ter" {
  label       = var.k8s_cluster_name
  k8s_version = var.k8s_version
  region      = var.cluster_region

  pool {
    type  = var.cluster_pool_type
    count = var.cluster_pool_count
  }
}
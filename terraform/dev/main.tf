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

module "linode_k8s" {
  source = "../modules/linodek8s"
  k8s_cluster_name = var.k8s_cluster_name
  k8s_version = var.k8s_version
  cluster_region = var.cluster_region
  cluster_pool_type = var.cluster_pool_type
  cluster_pool_min = var.cluster_pool_min
  cluster_pool_max = var.cluster_pool_max
  
}


variable "linode_token" {
    type = string
    description = "token for auth in linode"
  
}

variable "k8s_version" {
  type = number
  description = "k8s version"
}

variable "k8s_cluster_name" {
    type = string
    description = "cluster name"
  
}

variable "cluster_region" {
  type = string
  description = "k8s cluster region"
}

variable "cluster_pool_count" {
  type = number
  description = "number of nodes for cluster"
}

variable "cluster_pool_type" {
  type = string
  description = "type of pool nodes"
}
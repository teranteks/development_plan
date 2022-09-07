variable "linode_token" {
    type = string
    description = "token for auth in linode"
    sensitive = true
  
}

variable "k8s_version" {
  type = number
  description = "k8s version"
}

variable "k8s_cluster_name" {
    type = string
    description = "cluster name"
    sensitive = true
}

variable "cluster_region" {
  type = string
  description = "k8s cluster region"
  sensitive = true  
}

variable "cluster_pool_count" {
  type = number
  description = "number of nodes for cluster"
  sensitive = true
}

variable "cluster_pool_type" {
  type = string
  description = "type of pool nodes"

}
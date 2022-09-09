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
  sensitive = true  
}

variable "cluster_pool_min" {
  type = number
  description = "min number of nodes for cluster"
  sensitive = true
}

variable "cluster_pool_max" {
  type = number
  description = "max number of nodes for cluster"
  sensitive = true
}

variable "cluster_pool_type" {
  type = string
  description = "type of pool nodes"

}



variable "firewall_name" {
  type = string
  description = "firewall_name"
}
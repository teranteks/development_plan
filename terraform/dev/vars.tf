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


#Remote State Vars

variable "bucket_name" {
    type = string
    description = "bucket_name"
  
}

variable "storage_region" {
    type = string
    description = "storage_region"
  
}

variable "key_path" {
    type = string
    description = "key path for terraform state"
  
}

variable "backend_profile" {
    type = string
    description = "backend_profile"
  
}

variable "backend_endpoint" {
    type = string
    description = "backend_endpoint"
  
}


variable "firewall_name" {
  type = string
  description = "firewall_name"
  
}
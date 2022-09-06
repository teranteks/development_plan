output "pool_size" {
  value = linode_lke_cluster.k8s_ter.pool
  description = "lke pool size"
  depends_on = [
    linode_lke_cluster.k8s_ter
  ]
}


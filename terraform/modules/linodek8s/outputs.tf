output "cluster_label" {
  value = linode_lke_cluster.k8s_ter.label
  description = "lke label"
  depends_on = [
    linode_lke_cluster.k8s_ter
  ]
}


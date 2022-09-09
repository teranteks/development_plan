locals {
  firewall_inbound = [{
    label        = "allow-http"
    action       = "ACCEPT"
    protocol     = "TCP"
    ports        = "80"
    ipv4         = ["0.0.0.0/0"]
  },
  {
    label        = "allow-https"
    action       = "ACCEPT"
    protocol     = "TCP"
    ports        = "443"
    ipv4         = ["0.0.0.0/0"]
  }]
}

resource "linode_firewall" "firewall_setup" {
  label = var.firewall_name

  dynamic "inbound" {
    for_each = local.firewall_inbound

    content {
        label = inbound.value.label
        action = inbound.value.action
        protocol = inbound.value.protocol
        ports = inbound.value.ports
        ipv4 = inbound.value.ipv4
    }
  }

  inbound_policy = "DROP" # By default drop inbound traffic 

#   dynamic "outbound" {
#     for_each = var.outbound

#     content {
#         label = outbound.value.label
#         action = outbound.value.action
#         protocol = outbound.value.protocol
#         ports = outbound.value.ports
#         ipv4 = outbound.value.ipv4
#     }
#   }

  outbound_policy = "ACCEPT"

  linodes = [linode_lke_cluster.k8s_ter.id]
}

# #May cause troubles with user-defined firewall and linodes
# resource "linode_firewall_device" "my_device" {
#   firewall_id = linode_firewall.firewall_setup.id
#   entity_id = linode_instance.test_instance.id
# }

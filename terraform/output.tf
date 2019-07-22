output "ipv4" {
    value = "${scaleway_ip.ip.ip}"
}

output "ipv6" {
    value = "${scaleway_server.opennebula-frontend.public_ipv6}"
}

resource "null_resource" "inventories" {
  provisioner "local-exec" {
      command = "echo -e '[all]\n${scaleway_ip.ip.ip}' > ../ansible/hosts.ini"
  }
}

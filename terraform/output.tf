output "ipv4" {
    value = "${scaleway_ip.ip.ip}"
}

output "ipv6" {
    value = "${scaleway_server.opennebula-frontend.public_ipv6}"
}

resource "scaleway_ip" "ip" {}

data "local_file" "public_key" {
  filename = "../secrets/id_rsa.pub"
}

resource "scaleway_ssh_key" "public_key" {
    key = "${data.local_file.public_key.content}"
}

data "scaleway_image" "centos" {
  architecture = "x86_64"
  name         = "CentOS 7.6"
}

data "scaleway_security_group" "default" {
  name = "Default security group"
}

resource "scaleway_server" "opennebula-frontend" {
  name           = "OpenNebula"
  image          = "${data.scaleway_image.centos.id}"
  type           = "${var.instance_type}"
  enable_ipv6    = true
  public_ip      = "${scaleway_ip.ip.ip}"
  security_group = "${data.scaleway_security_group.default.id}"
}

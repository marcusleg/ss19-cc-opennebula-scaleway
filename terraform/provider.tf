provider "scaleway" {
  organization = "${var.scw_organization_id}"
  token        = "${var.scw_token}"
  region       = "${var.scw_region}"
}

# define firewall rules here
# use firewall/ingress_allow module to allow incoming traffic

module "fw_ssh" {
  source      = "../terraform-modules/firewall/ingress-allow"
  name        = "allow-ssh"
  description = "Allow SSH for everyone"
  network     = "${module.k8s_network.name}"
  protocol    = "tcp"
  ports       = ["22"]
}

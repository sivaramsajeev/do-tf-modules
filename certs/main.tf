resource "digitalocean_certificate" "lets-encrypt" {
  name    = var.certificate_name 
  type    = "lets_encrypt"
  domains = var.certificate_domains
}
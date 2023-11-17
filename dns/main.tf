resource "digitalocean_domain" "web-dns" {
   name = var.domain_name
   #ip_address = digitalocean_loadbalancer.webserver-lb.ip
   ip_address = var.dns_ip_address
}

resource "digitalocean_record" "web-dns-cname" {
  domain = digitalocean_domain.web-dns.name
  type = "CNAME"
  name = "www"
  value = "@"
}
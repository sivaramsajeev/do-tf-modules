resource "digitalocean_loadbalancer" "web-lb" {
  name   = var.lb_name
  region = var.lb_region
  vpc_uuid = var.vpc_id 

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = var.target_port
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = var.backend_droplet_ids
}
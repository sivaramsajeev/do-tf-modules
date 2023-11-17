output "droplet_public_ip" {
    value = [ for droplet in digitalocean_droplet.web-server : droplet.ipv4_address ]
}


output "droplet_private_ip" {
    value = [ for droplet in digitalocean_droplet.web-server : droplet.ipv4_address_private ]
}


output "droplet_ids" {
  value = [ for droplet in digitalocean_droplet.web-server : droplet.id ]
}
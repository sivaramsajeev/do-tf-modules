data "digitalocean_ssh_key" "my-mac" {
  name = var.ssh_key_name 
}

resource "digitalocean_droplet" "web-server" {
    count = var.droplet_count
    vpc_uuid  = var.vpc_id != "" ? var.vpc_id : null
    image = var.droplet_source_image 
    name = "${var.droplet_name_prefix}-${count.index}"
    region = var.droplet_region 
    size = var.droplet_shape 
    ssh_keys = [
      data.digitalocean_ssh_key.my-mac.id
    ]
    user_data = file(var.startup_script_path) 
}

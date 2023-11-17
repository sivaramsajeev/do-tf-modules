# Create a new container registry
resource "digitalocean_container_registry" "webserver-container-registry" {
  name                   = var.container_registry_name 
  subscription_tier_slug = "starter"
}
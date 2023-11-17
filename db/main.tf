resource "digitalocean_database_cluster" "do-db" {
  name       = var.db_name
  engine     = var.db_engine_type
  version    = var.db_engine_version
  size       = var.db_size 
  region     = var.db_region
  node_count = var.db_node_count
  private_network_uuid  = var.vpc_id != "" ? var.vpc_id : null 
}
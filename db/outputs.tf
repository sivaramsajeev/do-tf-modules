output "db_private_link" {
  value = digitalocean_database_cluster.do-db.private_host
}

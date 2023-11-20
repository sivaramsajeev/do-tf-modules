output "db_private_link" {
  value = digitalocean_database_cluster.do-db.private_host
}

output "db_id" {
  value = digitalocean_database_cluster.do-db.id
}

output "db_host" {
  value = digitalocean_database_cluster.do-db.host
}

output "db_port" {
  value = digitalocean_database_cluster.do-db.port
}

output "db_username" {
  value = digitalocean_database_cluster.do-db.user
}

output "db_password" {
  value = digitalocean_database_cluster.do-db.password
}

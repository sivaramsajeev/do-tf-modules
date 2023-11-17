output "cluster_id" {
  value = digitalocean_kubernetes_cluster.webserver-k8s.id
}

output "cluster_name" {
  value = digitalocean_kubernetes_cluster.webserver-k8s.name
}
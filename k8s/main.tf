data "digitalocean_kubernetes_versions" "current" {
  version_prefix = var.cluster_version
}

resource "digitalocean_kubernetes_cluster" "webserver-k8s" {
  name    = var.cluster_name
  region  = var.cluster_region
  version = data.digitalocean_kubernetes_versions.current.latest_version

  node_pool {
    name       = var.node_pool_name
    size       = var.worker_size
    node_count = var.worker_count
  }
}



resource "local_file" "kubeconfig" {
  depends_on = [digitalocean_kubernetes_cluster.webserver-k8s]
  content    = digitalocean_kubernetes_cluster.webserver-k8s.kube_config[0].raw_config
  filename   = var.kubeconfig_save_location
}
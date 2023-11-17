variable cluster_version { type = string }
variable cluster_name { type = string }
variable cluster_region { type = string }
variable worker_size { type = string }
variable worker_count { type = number } 
variable node_pool_name { type = string }

variable kubeconfig_save_location {
    type = string 
    default = "/tmp/kubeconfig.do"
}
variable db_name {type = string }
variable db_engine_type {type = string }
variable db_engine_version {type = string }
variable db_size {type = string }
variable db_region {type = string }
variable db_node_count {type = number }
variable "vpc_id" { 
    type = string
    default = ""
}

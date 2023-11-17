variable "lb_name" {
    type = string 
}

variable "lb_region" {
    type = string 
} 

variable "backend_droplet_ids" {
    default = []
    type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "target_port" {
  type = string
}
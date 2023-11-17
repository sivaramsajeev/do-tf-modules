variable "ssh_key_name" {
  type = string 
}


variable "droplet_count" {
    type = number
}

variable "droplet_source_image" {
  type = string
}


variable "droplet_name_prefix" {
  type = string 
}

variable "droplet_region" {
  type = string
}

variable "droplet_shape" {
    type = string 
}

variable "startup_script_path" {
  type = string
}

variable "vpc_id" {
  type = string
  default = ""
}

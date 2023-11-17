  variable "domain_id" {
    type = string 
  }
  
 variable "record_name" {
    type = string 
 }

variable "record_value" {
    type = string 
}

variable "record_type" {
  type = string 
  default = "A"
}


variable "record_ttl" {
  type = number
  default = 5
}
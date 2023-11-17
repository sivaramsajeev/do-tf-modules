resource "digitalocean_record" "record" {
  domain = var.domain_id
  type   = var.record_type
  name   = var.record_name
  value  = var.record_value
}
resource "digitalocean_spaces_bucket" "webserver-bucket" {
	name   = var.bucket_name
	region = var.region
  }

resource "digitalocean_spaces_bucket_cors_configuration" "foo" {
  bucket = digitalocean_spaces_bucket.webserver-bucket.id
  region = var.region

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://s3-website-test.hashicorp.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}
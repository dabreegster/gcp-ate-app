provider "google" {
  project = "aorta-routes"
  region  = "us-central1"
}

resource "google_storage_bucket" "bucket" {
  name          = "gcp-ate-app-test"
  location      = "us"
  force_destroy = true
}

resource "google_storage_bucket_object" "objects" {
  for_each = fileset("${path.module}/bucket_contents", "**/*")

  name         = each.key
  bucket       = google_storage_bucket.bucket.name
  source       = "${path.module}/bucket_contents/${each.key}"
  content_type = "text/html" # TODO This will vary later
}

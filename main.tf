provider "google" {
  project = var.project_id
  region  = var.region
}
# Create a secret
resource "google_secret_manager_secret" "my_secret" {
  secret_id = var.secret_id

  replication {
    auto {}
  }
}

# Add a secret version with the actual secret data
resource "google_secret_manager_secret_version" "my_secret_version" {
  secret      = google_secret_manager_secret.my_secret.id
  secret_data = var.secret_data
}
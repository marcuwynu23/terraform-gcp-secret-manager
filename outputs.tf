output "secret_id" {
  description = "The ID of the created secret"
  value       = google_secret_manager_secret.my_secret.secret_id
}

output "secret_name" {
  description = "The full resource name of the secret"
  value       = google_secret_manager_secret.my_secret.name
}

output "secret_version" {
  description = "The version of the created secret"
  value       = google_secret_manager_secret_version.my_secret_version.version
}

output "secret_data" {
  description = "The secret data (sensitive)"
  value       =  google_secret_manager_secret_version.my_secret_version.secret_data
  sensitive   = true
}
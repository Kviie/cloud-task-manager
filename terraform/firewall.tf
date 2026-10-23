resource "google_compute_firewall" "allow_http" {
  name    = "cloud-task-allow-http"
  network = google_compute_network.vpc.id
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}

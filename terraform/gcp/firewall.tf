resource "google_compute_firewall" "n8n_web" {
  name    = "n8n-web"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["5678"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["n8n"]

  description = "Allow access to n8n web interface"
}

resource "google_compute_firewall" "n8n_ssh" {
  name    = "n8n-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["n8n"]

  description = "Allow SSH access to n8n instance"
}

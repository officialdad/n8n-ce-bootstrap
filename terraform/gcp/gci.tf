resource "google_compute_instance" "n8n" {
  name         = "n8n-server"
  machine_type = "e2-standard-2"
  zone         = "asia-southeast1-a"

  tags = ["n8n"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
      size  = 20
      type  = "pd-standard"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral public IP
    }
  }

  metadata_startup_script = file("../../scripts/n8n-userdata.sh")

  service_account {
    scopes = ["cloud-platform"]
  }
}

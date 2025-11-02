resource "digitalocean_droplet" "this" {
  image     = "ubuntu-24-04-x64"
  name      = "n8n-server"
  region    = "sgp1"
  size      = "s-4vcpu-8gb"
  backups   = false
  user_data = file("../../scripts/n8n-userdata.sh")
}


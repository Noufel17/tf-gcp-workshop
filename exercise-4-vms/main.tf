resource "google_compute_network" "main" {
  name                    = "my-first-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "main" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.main.id
  region        = var.region
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"] # WARNING: In production, you should restrict this to your IP.
  target_tags   = ["ssh-enabled"]
}

resource "google_compute_instance" "main" {
  name         = "my-first-vm"
  machine_type = "e2-micro"
  zone         = "${var.region}-b" # Placing the VM in the 'b' zone of our region

  # This section defines the boot disk for the VM, including the OS image.
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  # This section configures the network for the VM.
  network_interface {
    # We are attaching it to the subnet we created in the previous exercise.
    subnetwork = google_compute_subnetwork.main.id

    # This gives our VM an external IP address so we can connect to it.
    access_config {
    }
  }

  # We apply the 'ssh-enabled' tag, which matches our firewall rule.
  tags = ["ssh-enabled"]
}
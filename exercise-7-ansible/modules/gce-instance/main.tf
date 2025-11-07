resource "google_compute_instance" "main" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
  }

  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  network_interface {
    subnetwork = var.subnet
    access_config {}
  }

  # this provisioner alone is not enough, it doesn't wait for the VM to be up and running to execute the command
  # provisioner "local-exec" {
  #   command = "ansible-playbook -i '${self.network_interface[0].access_config[0].nat_ip},' --private-key ${var.ssh_private_key} -u ${var.ssh_user} ./ansible/playbook.yml"
  # }

  tags = var.tags
}

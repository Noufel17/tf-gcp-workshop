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

  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.network_interface[0].access_config[0].nat_ip},' --private-key ${var.ssh_private_key_path} -u ${var.ssh_user} ./ansible/playbook.yml"

    # This connection block remains essential. It makes Terraform wait for
    # the SSH port to be open before it attempts to run the command above.
    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.ssh_private_key_path)
      host        = self.network_interface[0].access_config[0].nat_ip
    }
  }

  tags = var.tags
}

all:
  hosts:
    gce_vm:
      ansible_host: ${vm_ip}
      ansible_user: ${ssh_user}
      ansible_ssh_private_key_file: ${ssh_private_key_file}
# Create single VSI in dal09. Hourly billed with private network connection only. 

resource "ibm_compute_vm_instance" "tono_terraform" {
  hostname             = "tono-terraform01-dev"
  domain               = "example.com"
  os_reference_code    = "CENTOS_7_64"
  datacenter           = "dal09"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = true
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
}


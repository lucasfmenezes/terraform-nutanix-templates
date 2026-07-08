data "nutanix_clusters" "clusters" {
}

data "template_file" "autounattend" {
  template = file("autounattend.xml")
}

resource "nutanix_virtual_machine" "vm_windows" {
  # General Information
  name                 = var.vm_name
  description          = var.vm_description
  num_vcpus_per_socket = var.num_vcpus_per_socket
  num_sockets          = var.num_sockets
  memory_size_mib      = var.memory_size_mib

  # Cluster Information
  cluster_uuid = var.cluster_uuid

  # NIC
  nic_list {
    subnet_uuid = var.subnet_uuid
  }

  # Disk Windows Image
  disk_list {
    data_source_reference = {
      kind = "image"
      uuid = var.disk_image_uuid
    }

    device_properties {
      disk_address = {
        device_index = 0
        adapter_type = "SCSI"
      }

      device_type = "DISK"
    }
  }

  # Guest Customization
  guest_customization_sysprep = {
    unattend_xml = base64encode(data.template_file.autounattend.rendered)
  }
}

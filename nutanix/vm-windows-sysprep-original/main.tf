# Terraform to deploy VM Nutanix 

#Provider information
terraform{
  required_providers{
    nutanix = {
      source = "nutanix/nutanix"
      version = "1.3.0"
    }
  }
}
provider "nutanix" {
  username  = "admin"
  password  = "xpto" #senha do seu cluster
  endpoint  = "xpto" #ip do Prism Element ou Central
  insecure  = true
  port      = 9440
}

data "nutanix_clusters" "clusters" {
}

#Cluster ID
locals {
  cluster1 = "00061d6e-15fe-089d-2b83-000c295a828f" #ncli cluster info
  subnet1 = "eb2abab6-80f2-4e06-b94d-d0a2829711b4" #acli net.list
  disk_image1 = "3269153c-5444-4fb9-9dcb-fdc80c0191dc" #acli image.list
}

# Unattend.xml template
data "template_file" "autounattend" {
  count    = 1
  template = "${file("autounattend.xml")}"
}

#VM Resources
resource "nutanix_virtual_machine" "vm_teste_tf-01" {
  # General Information
  count                = 1
  name                 = "vm_teste_tf-01"
  description          = "demo VM terraform"
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096

  #Cluster Information
  cluster_uuid = local.cluster1

  #NIC
  nic_list {
    subnet_uuid = local.subnet1
  }

  #Disk Windows Image
  disk_list {
    
    data_source_reference = {
      kind = "image"
      uuid = local.disk_image1
    }

    device_properties {
      disk_address = {
        device_index = 0
        adapter_type = "SCSI"
      }

      device_type = "DISK"

    }
  }
  
  
  guest_customization_sysprep = {
    unattend_xml = "${base64encode("${element(data.template_file.autounattend.*.rendered, count.index)}")}"
  }

  #Disk Plus
  #disk_list {
  #  disk_size_bytes = 52428800000
  #  disk_size_mib = 50000
  #}
}

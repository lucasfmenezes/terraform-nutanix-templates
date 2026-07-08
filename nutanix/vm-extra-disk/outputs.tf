output "vm_name" {
  description = "Nome da VM criada"
  value       = nutanix_virtual_machine.vm_extra_disk.name
}

output "vm_uuid" {
  description = "UUID da VM criada"
  value       = nutanix_virtual_machine.vm_extra_disk.id
}

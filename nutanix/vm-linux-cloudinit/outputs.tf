output "vm_name" {
  description = "Nome da VM criada"
  value       = nutanix_virtual_machine.vm_linux.name
}

output "vm_uuid" {
  description = "UUID da VM criada"
  value       = nutanix_virtual_machine.vm_linux.id
}

output "vm_name" {
  description = "Nome da VM criada"
  value       = nutanix_virtual_machine.vm_windows.name
}

output "vm_uuid" {
  description = "UUID da VM criada"
  value       = nutanix_virtual_machine.vm_windows.id
}

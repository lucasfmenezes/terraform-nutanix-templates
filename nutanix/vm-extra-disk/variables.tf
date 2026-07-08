variable "nutanix_username" {
  description = "Usuario do Prism"
  type        = string
}

variable "nutanix_password" {
  description = "Senha do Prism"
  type        = string
  sensitive   = true
}

variable "nutanix_endpoint" {
  description = "IP ou FQDN do Prism Element ou Prism Central"
  type        = string
}

variable "cluster_uuid" {
  description = "UUID do cluster Nutanix"
  type        = string
}

variable "subnet_uuid" {
  description = "UUID da subnet"
  type        = string
}

variable "disk_image_uuid" {
  description = "UUID da imagem base"
  type        = string
}

variable "vm_name" {
  description = "Nome da VM"
  type        = string
  default     = "vm-teste-extra-disk-tf"
}

variable "vm_description" {
  description = "Descricao da VM"
  type        = string
  default     = "VM criada via Terraform com disco adicional"
}

variable "num_vcpus_per_socket" {
  description = "Quantidade de vCPU por socket"
  type        = number
  default     = 2
}

variable "num_sockets" {
  description = "Quantidade de sockets"
  type        = number
  default     = 1
}

variable "memory_size_mib" {
  description = "Memoria da VM em MiB"
  type        = number
  default     = 4096
}

variable "extra_disk_size_mib" {
  description = "Tamanho do disco adicional em MiB"
  type        = number
  default     = 51200
}

# VM Windows com Sysprep

Modelo para criar uma VM Windows no Nutanix usando Terraform, imagem existente e customização via `autounattend.xml`.

## Arquivos

~~~text
vm-windows-sysprep/
├── versions.tf
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars.example
├── autounattend.xml.example
└── autounattend.xml
~~~

## Uso

~~~bash
cp terraform.tfvars.example terraform.tfvars
nano terraform.tfvars
nano autounattend.xml
terraform init
terraform validate
terraform plan
terraform apply
~~~

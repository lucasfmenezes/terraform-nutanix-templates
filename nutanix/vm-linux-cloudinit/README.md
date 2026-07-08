# VM Linux com cloud-init

Modelo para criar uma VM Linux no Nutanix usando Terraform, imagem existente e customização via cloud-init.

## Uso

~~~bash
cp terraform.tfvars.example terraform.tfvars
nano terraform.tfvars
nano cloud-init.yaml
terraform init
terraform validate
terraform plan
terraform apply
~~~

## Atenção

O arquivo `cloud-init.yaml` contém senha apenas para laboratório. Ajuste antes de usar em qualquer ambiente real.

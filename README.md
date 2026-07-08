# Terraform Nutanix Templates

Repositório para armazenar modelos de Terraform voltados para estudos, testes e automações com Nutanix.

## Estrutura

~~~text
terraform-nutanix-templates/
└── nutanix/
    ├── vm-windows-sysprep/
    ├── vm-linux-cloudinit/
    └── vm-extra-disk/
~~~

## Modelos disponíveis

## vm-windows-sysprep

Modelo para criação de VM Windows no Nutanix usando imagem existente e customização com Sysprep.

## vm-linux-cloudinit

Modelo para criação de VM Linux no Nutanix usando imagem existente e customização com cloud-init.

## vm-extra-disk

Modelo para criação de VM no Nutanix com disco adicional.

## Como usar

Entre no diretório do modelo desejado:

~~~bash
cd nutanix/vm-windows-sysprep
~~~

Copie o arquivo de exemplo:

~~~bash
cp terraform.tfvars.example terraform.tfvars
~~~

Edite as variáveis:

~~~bash
nano terraform.tfvars
~~~

Inicialize o Terraform:

~~~bash
terraform init
~~~

Valide o código:

~~~bash
terraform validate
~~~

Veja o plano de execução:

~~~bash
terraform plan
~~~

Aplique o modelo:

~~~bash
terraform apply
~~~

## Atenção

Não envie arquivos `terraform.tfvars`, `.tfstate`, senhas, tokens ou dados reais para o GitHub.

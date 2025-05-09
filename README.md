# teste-tecnico

Projeto desenvolvido como requisito avaliativo para vaga DevOps.

## Terraform - provisionamento

### Pré-requisitos
- Terraform instalado.
- Bucket S3 configurado na AWS para armazenamento do state Terraform.
- `"aws cli"` instalado e configurado com acesso a conta AWS destino.

### Etapas para provisionamento da infraestrutura

- Executar `"git clone https://github.com/fernandostn/teste-tecnico.git"` para fazer o download do repositório.
- Executar `"cd teste-tecnico/terraform"` para acessar a pasta referente ao projeto Terraform.
- Fazer as edições necessárias no arquivo `"variables.tf"`, principalmente nas variáveis `"allowed_ssh_cidr"` e `"public_key"`.
- Executar `"terraform plan"` para visualizarmos os recursos que serão criados pelo Terraform.
- Executar `"terraform apply"` ou `"terraform apply -auto-approve"` para aplicar o Terraform e criar a infraestrutura.
- Após a criação da infraestrutura, observar no output do Terraform o nome DNS da instância criada para acesso SSH.


## Helm Chart

### Etapas para deploy do Helm Chart 

- Executar `"ssh ubuntu@<nome DNS da instância>"` para acessar a instância EC2. Dependendo da chave SSH configurada no Terraform, pode ser necessário informar o caminho da chave privada através do comando `"ssh -i <caminho da chave privada> ubuntu@<nome DNS da instância>"`.
- Executar `"minikube start"` para iniciar o cluster Minikube.
- Executar `"kubectl get nodes"` para testar o provisionamento do cluster.
- Executar `"git clone https://github.com/fernandostn/teste-tecnico.git"` para fazer o download do repositório.
- Executar `"cd teste-tecnico"` para acessar a pasta do repositório e ter acesso ao Helm Chart.
- Executar `"helm install my-nginx ./chart"` para aplicar o Helm Chart.
- Executar `"kubectl get deployments.apps"` para verificar a criação do deployment da aplicação.
- Executar `"kubectl get pods"` para verificar a criação do pod.
- Executar `"kubectl get services"` para verificar a criação do service.
- Executar `"kubectl port-forward svc/my-nginx 8080:80"` para iniciar o teste da aplicação.
- Abrir uma nova seção SSH para a instância EC2 e nesta nova seção executar `"curl localhost:8080"` para testar a aplicação. Se tudo funcionar corretamente a saída do comando irá apresntar uma página do Nginx.
- Sair das seções SSH.


## Terraform - exclusão

### Etapas para exclusão da infrasetrutura 

- Executar `"terraform destroy"` ou `"terraform destroy -auto-approve"` para excluir a infraestrutura.
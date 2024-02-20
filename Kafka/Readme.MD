# Deploy do Kafka em um cluster ja existente

### Referências:

1. [Documentação Oficial do Strimzi](https://strimzi.io/docs/operators/0.30.0/quickstart#proc-install-product-str) (Base para criação deste deploy)
2. [Releases do Strimzi Kafka Operator](https://github.com/strimzi/strimzi-kafka-operator/releases/tag/0.30.0) (Download dos arquivos)
   - [Download do ZIP](https://github.com/strimzi/strimzi-kafka-operator/releases/download/0.30.0/strimzi-0.30.0.zip)

### Comandos Úteis:

Rodar o comando abaixo para alterar o valor de `namespace` para todos os arquivos com o nome `RoleBinding`:

- **Linux**:
```bash
sed -i 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml
```
- **MAC**:
```bash
sed -i '' 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml
```

Exemplos de Configuração:

[Exemplo de Configuração do Tópico Kafka](https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/topic/kafka-topic.yaml)

[Exemplo de Configuração do Kafka Ephemeral](https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/kafka/kafka-ephemeral.yaml)

Dicas:
Altere sempre o termo "my-cluster" para o nome do seu cluster.
Altere sempre o nome do "my-topic" para o nome do seu tópico.

Efetuar o git desse repositório.


Para iniciar o Terraform:

1. Acesse a pasta Kafka.
2. Rode o comando `terraform init`.
3. Execute `terraform plan`.
4. Utilize `terraform apply` e digite `yes` quando solicitado.

Para efetuar a limpeza rode o comando `terraform destroy` após rodar o comando `terraform destroy`, execute também:

```bash
kubectl delete -f modules/strimzi/manifests/031-RoleBinding-strimzi-cluster-operator-entity-operator-delegation.yaml -n application
kubectl delete -f modules/strimzi/manifests/ -n strimzi

# Deploy do Kafka em um cluster ja existente

### Referências:

1. [Documentação Oficial do Strimzi](https://strimzi.io/docs/operators/0.30.0/quickstart#proc-install-product-str) (Base para criação deste deploy)
2. [Releases do Strimzi Kafka Operator](https://github.com/strimzi/strimzi-kafka-operator/releases/tag/0.30.0) (Download dos arquivos)
   - [Download do ZIP](https://github.com/strimzi/strimzi-kafka-operator/releases/download/0.30.0/strimzi-0.30.0.zip)

### Comandos Úteis:

Rodar o comando abaixo para alterar o valor de `namespace` para todos os arquivos com o nome `RoleBinding`:

- **Linux**:

sed -i 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml

- **MAC**:
sed -i '' 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml


Exemplos de Configuração:
[Exemplo de Configuração do Tópico Kafka](https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/topic/kafka-topic.yaml)
[Exemplo de Configuração do Kafka Ephemeral](https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/kafka/kafka-ephemeral.yaml)

Dicas:
Altere sempre o termo "my-cluster" para o nome do seu cluster.
Altere sempre o nome do "my-topic" para o nome do seu tópico.

Efetuar o git desse repositório.

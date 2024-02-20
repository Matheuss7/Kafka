    Deploy do Kafka em um cluster

1 - https://strimzi.io/docs/operators/0.30.0/quickstart#proc-install-product-str  (Pesquisa base pra criacao desse deploy)
2 - https://github.com/strimzi/strimzi-kafka-operator/releases/tag/0.30.0 (Download dos arquivos)
2.a - https://github.com/strimzi/strimzi-kafka-operator/releases/download/0.30.0/strimzi-0.30.0.zip

Rodar o comando abaixo para alterar o valor de namespace para todos os arquivos com o nome RoleBinding

On Linux, use:

sed -i 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml
On Mac, use:

sed -i '' 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml

2 - https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/topic/kafka-topic.yaml (Criacao base do topico)
3 - https://github.com/strimzi/strimzi-kafka-operator/blob/main/examples/kafka/kafka-ephemeral.yaml (Criacao base do Kafka)

 - altere sempre o termo "my-cluster" para o nome do seu cluster
 - altere sempre o nome do "my-topic" para o nome do seu topico


Efetuar o git desse repo, ele esta bem
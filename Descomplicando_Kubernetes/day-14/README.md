# Kyverno: Gerenciamento de Políticas Nativas para Kubernetes

Kyverno é um mecanismo de políticas projetado especificamente para Kubernetes. Ele permite definir, validar, modificar e gerar recursos do Kubernetes sem a necessidade de criar webhooks personalizados ou escrever código complexo. Com Kyverno, você pode reforçar padrões de segurança, conformidade e gestão automatizada dentro do cluster Kubernetes.

## Arquivos e suas funcionalidades

Este repositório contém várias políticas YAML utilizadas pelo Kyverno para garantir segurança e conformidade dentro do cluster Kubernetes. Abaixo está a descrição de cada um dos arquivos presentes:

### **add-label-namespace.yaml**
Esta política adiciona automaticamente um rótulo (label) aos Namespaces criados no cluster. Isso é útil para garantir que todos os Namespaces tenham metadados padronizados e possam ser filtrados ou gerenciados de maneira consistente.

### **disable-root-user.yaml**
Impede que containers sejam executados como o usuário root. Essa política reforça boas práticas de segurança, minimizando os riscos associados ao uso de privilégios elevados dentro dos Pods.

### **exclude-ns-only-registry-allowed.yaml**
Garante que apenas imagens de determinados registries sejam permitidas, com exceção de Namespaces específicos. Isso é essencial para reforçar a segurança de imagens, garantindo que apenas imagens de fontes confiáveis sejam usadas no cluster.

### **generate-configmap-adding-ns.yaml**
Cria automaticamente um ConfigMap para cada Namespace criado, garantindo que certas configurações padrões sejam aplicadas a todos os Namespaces. Útil para garantir consistência na configuração dos ambientes.

### **only-registry-allowed.yaml**
Bloqueia o uso de imagens que não sejam de registries permitidos. Essa política é uma das principais para garantir conformidade e segurança no uso de containers dentro do Kubernetes.

### **pod.yaml**
Define um exemplo de configuração de um Pod no Kubernetes. Este arquivo pode ser usado para testes e validação de políticas aplicadas pelo Kyverno.

### **require-resource-limits.yaml**
Exige que todos os Pods tenham limites e solicitações de CPU e memória definidos. Isso evita que workloads consumam recursos excessivos, garantindo um uso eficiente dos recursos computacionais do cluster.

## Como Usar as Políticas Kyverno
Instale o Kyverno no cluster Kubernetes:
   kubectl apply -f https://raw.githubusercontent.com/kyverno/kyverno/main/definitions/release/install.yaml

Aplique as politicas desejadas:
   kubectl apply -f policy.yaml




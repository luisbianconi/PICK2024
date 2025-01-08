kubectl get pods -l app=nginx-deployment
kubectl create deployment --image nginx --replicas 3 nginx-deployment --dry-run=client -o yaml ## Pegando o yaml para criar Deployment
kubectl get deployments.apps nginx-deployment -o yaml ## Outra Forma
kubectl create namespace giropops --dry-run=client -o yaml
ROLLOUT -> Atualização
ROLLBACK -> Reversão

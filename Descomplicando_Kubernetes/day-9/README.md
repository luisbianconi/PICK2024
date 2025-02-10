kubectl create -f manifest/setup
kubectl apply -f manifest
kubectl port-forward -n monitoring svc/grafana 80:3000

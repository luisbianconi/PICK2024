kubectl run girus --image alpine --dry-run=client -o yaml > pod.yaml
kubectl logs girus -c busybox

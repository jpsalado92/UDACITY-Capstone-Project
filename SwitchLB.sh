set -ex
kubectl apply -f blue-green-lb-service.json
kubectl delete replicationcontroller/blue

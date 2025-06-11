Install kube-prometheus-stack


kubectl create namespace monitoring
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring

Create a pod that increase cpu
kubectl run cpu-test1 --image=containerstack/cpustress -- --cpu 4 --timeout 60s --metrics-brief 

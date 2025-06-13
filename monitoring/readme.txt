Install kube-prometheus-stack operator helm chart:
kubectl create namespace monitoring 
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring

Create a pod that increase cpu
kubectl run cpu-test1 --image=containerstack/cpustress -- --cpu 4 --timeout 60s --metrics-brief 

Add exporter for mongodb (exporters will get metrics data from the service and translate them to prometheus understandable data
then prometheusw will be able to scrape the data )
When we deploy an exporter we ned to create also a Service Monitor that will tell prometheus that there is a new endpoint to scrape
helm upgrade --install mongodb-exporter prometheus-community/prometheus-mongodb-exporter -f monitoring/mongodb-exporter/mongodb.yaml 


# kubernetes_webserver
This is an experimental repo providing a Kubernetes manifest deploying 2 containers in a Pod
Container contentmaker sends an API to get the EUR-TRY exchange rate at every 60 secs and put that info at the index.html file that is used by trhye nginx container

After building the deployment with 
> kubectl apply -f manifest.yaml

Build the service 
> kubectl expose deployment nginx --port=8080 --target-port=80 --external-ip=<extermal ip here>

Then navigating to <external address>:8080 from your browser will connect you to the page displaying the EUR-TRY exchange rate


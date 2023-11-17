# Node SQL API

This is a simple Node.js application that connects to MySQL and exposes an API.

## Prerequisites

Ensure you have the following tools installed:

- [Docker](https://www.docker.com/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Run on Kubernetes

```bash

# Clone the repository and navigate to the project directory:
git clone https://github.com/vipul-bagal/node-sql-api-docker.git

# Apply the Kubernetes YAML file to create the pod:
kubectl apply -f nodepod.yaml
or kubectl create -f nodepod.yaml
Include -n 'namespace-name' if you want to add the pod to namespace

# Monitor the pod's status:
watch kubectl get all -n 'namespace-name'

# Wait until the pod's status is Running.

# Access the Node.js app at http://localhost:9025.

# Access the /connect endpoint to establish a connection to MySQL:
curl http://localhost:9025/connect

# To create a table into DB
curl http://localhost:9025/create-table

# To insert random numbers into DB table
curl http://localhost:9025/insert

# To fetch all the records
curl http://localhost:9025/fetch
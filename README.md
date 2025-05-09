# teste-tecnico

git clone https://github.com/fernandostn/teste-tecnico.git
cd terraform
terraform plan
terraform apply

minikube start
kubectl get nodes
git clone https://github.com/fernandostn/teste-tecnico.git
cd teste-tecnico
helm install my-nginx ./chart
kubectl get deployments.apps
kubectl get pods
kubectl get services
kubectl port-forward svc/my-nginx 8080:80
curl localhost:8080

<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>

terraform destroy
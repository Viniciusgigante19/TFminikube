# Deploy e Orquestração de Aplicação com Docker e Kubernetes

# Instale o Docker Desktop.
https://docs.docker.com/desktop/setup/install/windows-install/
> [!NOTE]
> ATENÇÃO: Abra a janela do Docker Desktop e mantenha aberta para inicializar o motor de execução Docker.

# ATENÇÃO: Abra a janela do Docker Desktop e mantenha aberta para inicializar o motor de execução Docker.

# Instale o Kubectl na sua máquina host. 
https://kubernetes.io/pt-br/docs/tasks/tools/
> [!NOTE]
> Acesse o link acima e veja o procedimento de instalação de acordo com seu sistema operacional host.

# Valide a instalação checando a versão com o comando:
```shell
kubectl version --client
```
> [!NOTE]
> Enquanto não visualizar a versão do kubectl não adianta seguir em frente. Primeiro instale o kubectl na máquina host.

# Instale o minikube
https://minikube.sigs.k8s.io/docs/start

# Verifica a versão do Minikube instalada
```shell
minikube version
```
> [!NOTE]
> Enquanto não visualizar a versão do Minikube não adianta seguir em frente. Primeiro instale o Minikube na máquina host.

# Inicia o cluster Kubernetes local com Minikube
```shell
minikube start
```
# Cria a imagem Docker local da aplicação Streamlit
```shell
docker build -t app-compare:v1 .
```

# Execução dos conteineres
```shell
docker compose up --build
```

# Aplica o manifesto YAML para criar o deployment Kubernetes
```shell
kubectl apply -f k8s/deployment.yaml 
```

# Aplica o manifesto YAML para criar o serviço Kubernetes
```shell
kubectl apply -f k8s/service.yaml 
```

# Aplica o manifesto YAML para criar o deployment Nginx:
```shell
kubectl apply -f nginx/nginx-deployment.yaml
```

# Aplica o manifesto YAML para criar o serviço Nginx:
```shell
kubectl apply -f nginx/nginx-service.yaml
```


## - ##
# Como Usar:
## - ##


# VERIFICAR PODS:
```shell
kubectl get pods
```

# VERIFICAR SERVIÇOS:

```shell
kubectl get services
```

# CRIAR UM NOVO POD:
```shell
kubectl run meu-pod --image=nginx --restart=Never
```

# DELETAR POD:
```shell
kubectl delete pod meu-pod
```

# ABRIR O NGINX PLEO NAVEGADOR USANDO URL:
```shell
minikube service nginx-service
```
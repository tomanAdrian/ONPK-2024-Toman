
# Helm Chart 

### Nasadenie aplikácie
`helm upgrade --install onpkapp . --values values-onpkapp.yaml --wait --namespace onpkapp --create-namespace`

### Frontend

| Key                     | Description                     | Default                      |
|--------------------------|--------------------------------|------------------------------|
| `frontend.replicas`      | Number of frontend replicas    | `1`                          |
| `frontend.env`           | Environment variables          | `[REACT_APP_APIHOSTPORT]`    |
| `frontend.service.type`  | Type of frontend service       | `ClusterIP`                  |
| `frontend.service.port`  | Port for frontend service      | `8080`                       |
| `frontend.ingress.hosts` | Hosts for ingress              | `["onpkapp.mydomain.local"]` |

### Backend

| Key                     | Description                           | Default               |
|--------------------------|--------------------------------------|-----------------------|
| `backend.replicas`       | Number of backend replicas           | `1`                   |
| `backend.env`            | Environment variables                | `[MONGO_CONN_STR      |
                                                                |   MONGO_AUTH_SOURCE   |
                                                                |   MONGO_USERNAME      |
                                                                |   MONGO_PASSWORD]`    |
| `backend.service.type`   | Type of backend service              | `ClusterIP`           |
| `backend.service.port`   | Port for backend service             | `9080`                |

### MongoDB

| Key                     | Description                           | Default               |
|--------------------------|--------------------------------------|-----------------------|
| `mongodb.auth.enabled`   | Enable authentication for MongoDB    | `true`                |
| `mongodb.auth.username`  | MongoDB username                     | `admin`               |
| `mongodb.auth.password`  | MongoDB password                     | `password`            |
| `mongodb.initdb.scripts` | MongoDB initialization scripts       | `[init.js]`           |

### Prístup k službám

#### Frontend
URL: http://onpkapp.mydomain.local:8080
`kubectl port-forward svc/onpkapp-frontend 8080:8080 -n onpkapp`

#### Backend
URL: http://onpkapp.mydomain.local:9080
`kubectl port-forward svc/onpkapp-backend 9080:9080 -n onpkapp`

#### MongoDB
`mongodb://admin:password@onpkapp-mongodb:27017/platformsdb`

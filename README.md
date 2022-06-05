## What is this?
 - Scripts that install resources needed to manage servers with dockers
 - Currently, only the `docker registry server` and `nginx proxy manager` are supported.

## How to use?
 - If you want to use both?
 ``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script
start.sh
```

 - You want to run only the `docker registry`, `docker registry web` and `potainer`
``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script
./generate-key.sh
docker-compose up -d
```

 - You want to run only the `nginx proxy maanger`
 ``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script/nginx
run.sh
```

 - If you installed `nginx-proxy-manager`,
Go to nginx-proxy-manager.domain.com
```text 
id : admin@example.com
pw : changeme
```

## Docker conatiner hostname 
 - docker registry admin page : `registry-web:8080`
 - docker registry server : `registry:5000`
 - portainer : `portainer:8000`
    - Portainer will expose the UI over the port 8000
    - Expose a TCP tunnel server over the port 9443

## Current problem
 - The proxy manager needs a list of accessible whitelists.

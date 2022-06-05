## What is this?
 - Scripts that install resources needed to manage servers with dockers
 - Currently, only the docker registry server and nginx proxy manager are supported.

## How to use?
 - If you want to use both?
 ``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script
start.sh
```

 - You want to run only the 'docker registry' and the 'docker registry web'
``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script
./generate-key.sh
docker-compose up -d
```

 - You want to run only the 'nginx proxy maanger'
 ``` bash
git clone git@github.com:Kyungseo-Park/docker-registry-script.git
cd docker-registry-script/nginx
run.sh
```

## Current problem
 - My server has port 81 blocked. So, you need to set up a proxy on port 81 of the proxy manager.
 - The proxy manager needs a list of accessible whitelists.

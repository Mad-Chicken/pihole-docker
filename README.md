# Pihole-docker

https://github.com/blocklistproject/Lists

## Intallation

Requires docker


```bash
$ git clone https://github.com/Mad-Chicken/pihole-docker.git
$ cd pihole-docker
```

* In [docker-compose.yml] replace WEBPASSWORD's value with your custom password
* Update your adlist.list 
* blacklist.txt
* whitelist.txt


```
$ docker-compose up --build --detach
```

[docker-compose.yml]: <http://angularjs.org>
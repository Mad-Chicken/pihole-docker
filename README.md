# Pihole-docker

DNS ad blocker for your network


## Intallation

Requires docker


```bash
$ git clone https://github.com/Mad-Chicken/pihole-docker.git
$ cd pihole-docker
```

* In [docker-compose.yml] replace WEBPASSWORD's value with your custom password
* Update your [adlist.list]
* [blacklist.txt]
* [whitelist.txt]
* [white-wild.txt]

Add DNS names for local services in [white-wild.txt] following:
```[ <IP> <DNS> ]```

More adlists here: https://github.com/blocklistproject/Lists


Run the container
```bash
$ docker-compose up --build --detach
```

[docker-compose.yml]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/docker-compose.yml>
[adlist.list]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/adlist.list>
[whitelist.txt]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/whitelist.txt>
[white-wild.txt]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/white-wild.txt>
[blacklist.txt]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/blacklist.txt>
[custom.list]: <https://github.com/Mad-Chicken/pihole-docker/blob/master/customer.list>
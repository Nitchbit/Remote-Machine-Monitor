## CLIENT

These components allow you to expose metrics
To install the components you need to execute [download.sh](download.sh) and choose what you need.
You can choose to expose both container's metrics and pc's metrics.

If you want to see container's metrics, the script will install docker and an image of a container with google/cAdvisor pre-installed.
Otherwise, if you choose single pc's metrics, the script will install prometheus node exporter service.

You can always choose to install both of them.

## cAdvisor

cAdvisor is the tool that expose the metrics on the 8080 port by default.
To start cAdvisor service do as follows:
- open a terminal in the docker_test folder;
- execute the command: ```make up_cAdvisor```;
- if the whole procedure ends without errors you can see cAdvisor service on http://localhost:8080;
- to end the execution of cAdvisor service execute the command: ```make down_cAdvisor```;

For more details on cAdvisor:
- [docker-compose.yml](SystemMonitor/Client/docker-compose.yml)
- [cAdvisor](https://github.com/google/cadvisor)

## Node-Exporter

Node Exporter is a plugin on Prometheus that allow you to expose metrics from a single linux pc on the 9100 port by default.
To start Node Exporter service do as follows:
- open a terminal in the docker_test folder;
- execute the command: ```make up_node_exporter```;
- if the whole procedure ends without errors you can see Node Exporter service on http://localhost:9100;
- to end execution of Node Exporter service execute the command: ```make down up_node_exporter```

For more details on Node Exporter:
- [Makefile](Makefile)
- [Node Exporter](https://github.com/prometheus/node_exporter)

# CLIENT

These components allow you to expose metrics
To install the components you need to execute [download.sh](download.sh) and choose what you need.
You can choose to expose both container's metrics and pc's metrics.

If you want to see container's metrics, the script will install docker and an image of a container with google/cAdvisor pre-installed.
Otherwise, if you choose single pc's metrics, the script will install prometheus node exporter service.

You can always choose to install both of them.

## cAdvisor

cAdvisor is the tool that expose the metrics on the 8080 port by default.
To start cAdvisor service do as follows:
- open a terminal in the Docker folder;
- execute the command ```make up_cAdvisor```;
- if the whole procedure ends without errors you can see cAdvisor service on http://localhost:8080;
- to end the execution of cAdvisor service execute ```make down_cAdvisor```;

For more details on cAdvisor:
- [docker-compose.yml](Docker_comps/docker-compose.yml)
- [cAdvisor](https://github.com/google/cadvisor)

## Node-Exporter

Node Exporter is a plugin on Prometheus that allow you to expose metrics from a single linux pc on the 9100 port by default.
To start Node Exporter service do as follows:
- open a terminal in the NodeExporter folder;
- execute ```make up_node_exporter```;
- if the whole procedure ends without errors you can see Node Exporter service on http://localhost:9100;
- to end execution of Node Exporter service execute the command: ```make down_node_exporter```

For more details on Node Exporter:
- [Makefile](NodeExporter_comps/Makefile)
- [Node Exporter](https://github.com/prometheus/node_exporter)

## Prometheus

Prometheus allows you to scrape the metrics exposed by cAdvisor or Node Exporter. The system provides a default configuration file that is ready to go.
Make sure to overwrite the configuration file located by /etc/prometheus/prometheus.yml with this [file](prometheus.yml).
If you can't find prometheus following the above path, make sure to read the [prometheus documentation](https://prometheus.io/docs/introduction/overview/)

### Prometheus Configuration
The correct functioning of the architecture is based on the syncronization between Grafana's query and the Prometheus configuration.
The job_name inside the configuration are:
- node -> for single linux pc
- cluster -> for a docker cluster of container

```diff
- Warning
```:
If you choose to change these names inside the /etc/prometheus/prometheus.yml file, make sure to change the queries accordingly.

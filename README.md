# Tumino - Sergi

## [SystemMonitor](SystemMonitor)

SystemMonitor is a tool that allows you to monitor several system's metrics. It's compatible with cluster of Docker's containers running on linux and with system debian-based. This tool is based on a client-server architecture, in which the client is the system to be monitored and by the server side you can monitor the clients, through metrics and graphs.

![Architecture](projectImage.jpg)


## Server

The only component on the server side is grafana, as explained by this [document](SystemMonitor/Server). Grafana is reachable from anywhere, at the address and port specified, as long as you made it accessible outside your local network.

## Client

The [client](SystemMonitor/Client) rappresent the system to be monitored, is composed by three tools:
- [Prometheus](SystemMonitor/Client/README.md)
- [Promtheus Node Exporter and/or cAdvisor](SystemMonitor/Client/README.md)
- [Docker containers](SystemMonitor/Client/README.md)

Prometheus scrape the metrics from Node Exporter and/or cAdvisor and it receives queries from Grafana to show the result with graphs.

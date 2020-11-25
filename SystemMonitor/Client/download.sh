#!/bin/bash
echo "Which system do you want to monitor?
( D ) - Docker's cluster;
( C ) - Linux pc;
( E ) - both;"
read scelta
#docker components installation
if [ "$scelta" = "D" ]; then
	sudo apt install -y prometheus
	sudo apt-get -y install docker
	sudo docker pull google/cadvisor
elif [ "$scelta" = "C" ]; then
#prometheus installation
	sudo apt install -y prometheus
	sudo apt-get -y install prometheus-node-exporter
elif [ "$scelta" = "E" ]; then
	sudo apt install -y prometheus
	sudo apt-get -y install docker
	sudo docker pull google/cadvisor
	sudo apt-get -y install prometheus-node-exporter
else
	echo "Option not reconized."
fi
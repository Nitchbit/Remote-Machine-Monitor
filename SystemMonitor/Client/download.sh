#!/bin/bash
echo "Vuoi installare:
( D ) - le componenti per i container docker;
( C ) - quelle per monitoring della tua macchina;
( E ) - entrambi;"
read scelta
#docker components installation
if [ "$scelta" = "D" ]; then
	sudo apt-get -y install docker
	sudo docker pull google/cadvisor
elif [ "$scelta" = "C" ]; then
	#prometheus configuration
	sudo apt-get -y install prometheus-node-exporter
elif [ "$scelta" = "E" ]; then
	sudo apt-get -y install docker
	sudo docker pull google/cadvisor
	sudo apt-get -y install prometheus-node-exporter
else
	echo "Comando non riconosciuto."
fi
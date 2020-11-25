#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y

sudo apt install -y grafana 
sudo apt install -y prometheus
sudo grafana-cli plugins install grafana-image-renderer
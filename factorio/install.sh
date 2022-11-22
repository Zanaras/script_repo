#!/usr/bin/env bash

apt-get update
apt-get install python3-pip -y
mkdir /opt/factorio
mkdir /opt/fup
wget https://factorio.com/get-download/stable/headless/linux64
tar -xzf linux64 -C /opt/factorio
wget -O https://raw.githubusercontent.com/narc0tiq/factorio-updater/master/update_factorio.py /opt/fup/update_factorio.py
pip install requests
mkdir /opt/factorio/mods

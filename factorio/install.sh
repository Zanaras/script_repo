#!/usr/bin/env bash

apt-get update
apt-get install python3-pip -y
mkdir /opt/factorio
mkdir /opt/fup
mkdir /opt/fmu
wget https://factorio.com/get-download/stable/headless/linux64
tar -xzf linux64 -C /opt/factorio
wget -O https://raw.githubusercontent.com/Zanaras/script_repo/main/factorio/server_settings.json /opt/data/server_settings.json
wget -O https://raw.githubusercontent.com/narc0tiq/factorio-updater/master/update_factorio.py /opt/fup/update_factorio.py
wget -O https://raw.githubusercontent.com/pdemonaco/factorio-mod-updater/master/mod_updater.py /opt/fmu/mod_updater.py
pip install requests
mkdir /opt/factorio/mods

#!/bin/bash

sudo apt install -y libx11-xcb-dev libgtk-3-0 libxss1 libnss3 libasound2 libdrm2 libice6 libsm6 libgbm-dev net-tools mount vim htop git curl

sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs gcc g++ make
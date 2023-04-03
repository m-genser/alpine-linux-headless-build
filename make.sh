#!/bin/bash

# Download the Alpine Linux image for Raspberry Pi 4
wget https://dl-cdn.alpinelinux.org/alpine/v3.17/releases/aarch64/alpine-rpi-3.17.3-aarch64.tar.gz -O ./alpine-rpi-3.17.3-aarch64.tar.gz

# Extract the contents of the downloaded archive
mkdir -p ./unziped/alpine-rpi-3.17.3-aarch64/
tar -zxvf ./alpine-rpi-3.17.3-aarch64.tar.gz -C ./unziped/alpine-rpi-3.17.3-aarch64/

# Download the headless modification and add it to the FS
wget https://github.com/m-genser/alpine-linux-headless-mod/releases/download/main/headless.apkovl.tar.gz -O ./headless.apkovl.tar.gz
mv ./headless.apkovl.tar.gz ./unziped/alpine-rpi-3.17.3-aarch64/headless.apkovl.tar.gz

# Create a ZIP archive of the extracted files
cd unziped/alpine-rpi-3.17.3-aarch64 && zip -r ../../alpine-rpi-3.17.3-aarch64.zip * -x alpine-rpi-3.17.3-aarch64 && cd ../..
#!/bin/bash

# Download the Alpine Linux image for Raspberry Pi 3
wget https://dl-cdn.alpinelinux.org/alpine/v3.17/releases/aarch64/alpine-rpi-3.17.3-aarch64.tar.gz

# Extract the contents of the downloaded archive
tar -zxvf alpine-rpi-3.17.3-aarch64.tar.gz

# Create a ZIP archive of the extracted files
zip -r ./alpine-rpi-3.17.3-aarch64.zip ./alpine-rpi-3.17.3-aarch64/

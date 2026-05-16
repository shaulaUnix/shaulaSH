# INSTALL WGCF IN TERMUX WITH ALPINE LINUX
# ----------------------------------------
# Prerequisites include Termux, PRoot-Distro, and wget
# Termux version: 0.119.0 BETA
# PRoot-Distro version: Pre-release

# Update and upgrade the current packages
apt update && yes | apt upgrade

# Install the requirements
apt install -y python-pip proot-distro proot

# Download the installer
curl -O https://raw.githubusercontent.com/shaulaUnix/shaulaSH/refs/heads/main/installer-alpine.sh

# Install Alpine Linux and then start it
pd i alpine && pd sh alpine --termux-home

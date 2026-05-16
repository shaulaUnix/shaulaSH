#!/usr/bin/env bash
# This is a complement to the wgcf.sh script!
# Helper: ChatGPT

# Make the installer executable
chmod u+x installer-alpine.sh

# Upgrade packages
apk -U upgrade

# Install wget
apk add --no-cache wget

# Create a new directory for wgcf
mkdir -p wgcf
cd wgcf || exit 1

# Architecture menu
PS3="Choose architecture: "
options=("arm64" "armv7" "Exit")

select opt in "${options[@]}"; do
  case $opt in
    "arm64")
      echo "Downloading arm64 binary..."
      wget -O wgcf https://github.com/ViRb3/wgcf/releases/download/v2.2.30/wgcf_2.2.30_linux_arm64
      chmod +x wgcf
      ./wgcf register
      ./wgcf generate
      break
      ;;
    "armv7")
      echo "Downloading armv7 binary..."
      wget -O wgcf https://github.com/ViRb3/wgcf/releases/download/v2.2.30/wgcf_2.2.30_linux_armv7
      chmod +x wgcf
      ./wgcf register
      ./wgcf generate
      break
      ;;
    "Exit")
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done

exit 0

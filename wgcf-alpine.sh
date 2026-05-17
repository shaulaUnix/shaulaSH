#!/usr/bin/env bash
# This is a complement to the wgcf.sh script!
# This script install the 2.2.30 version of wgcf, which is the newest version as of May 17. You will need to change the version in the future.
# Helper: ChatGPT, Gemini
# Tester: shaulaUnix

# Upgrade packages
apk -U upgrade

# Install wget
apk add --no-cache wget

# Create a new directory for wgcf
mkdir -p wgcf
cd wgcf || exit 1

# Detect architecture
ARCH=$(uname -m)

case "$ARCH" in
    aarch64 | arm64)
        WGCF_URL="https://github.com/ViRb3/wgcf/releases/download/v2.2.30/wgcf_2.2.30_linux_arm64"
        ARCH_NAME="arm64"
        ;;
        
    armv7l | armv7)
        WGCF_URL="https://github.com/ViRb3/wgcf/releases/download/v2.2.30/wgcf_2.2.30_linux_armv7"
        ARCH_NAME="armv7"
        ;;
        
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

echo "Detected architecture: $ARCH_NAME"
echo "Downloading wgcf..."

# Download wgcf
wget -O wgcf "$WGCF_URL"

# Make executable
chmod +x wgcf

# Run wgcf
echo | ./wgcf register
./wgcf generate

echo "Done!"
exit 0

# Source:  https://github.com/ViRb3/wgcf/issues/169#issuecomment-1076517330

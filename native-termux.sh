# INSTALL TERMUX NATIVE DESKTOP (CREDIT: DROIDMASTER)
# Prerequisites include Termux and Termux:X11
# Termux version: 0.119.0 BETA
# Termux:X11 version: Nightly release

# Update and upgrade packages
apt update && yes | apt upgrade

# Install the requirements
apt install -y x11-repo termux-x11-nightly pulseaudio wget xfce4 tur-repo

# Install Droidmaster's script and then run it
curl -O https://raw.githubusercontent.com/LinuxDroidMaster/Termux-Desktops/main/scripts/termux_native/startxfce4_termux.sh && chmod +x startxfce4_termux.sh && bash startxfce4_termux.sh

#!/bin/bash

# Installerer Flatpak om det ikke er installert fra før
ssh olav@olav-maskin 'sudo apt-get install -y flatpak'

# Legger til Flathub repository for Flatpak
ssh olav@olav-maskin 'sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo'

# Installerer pakkene via Flatpak
ssh olav@olav-maskin 'sudo flatpak install -y flathub org.gnome.gnumeric'
ssh olav@olav-maskin 'sudo flatpak install -y flathub org.texstudio.TeXstudio'
ssh olav@olav-maskin 'sudo flatpak install -y flathub org.keepassxc.KeePassXC'

echo "Flatpak-applikasjoner er installert!"

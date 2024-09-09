#!/bin/bash

# Installere nødvendige pakker
ssh olav@olav-maskin 'sudo apt-get update && sudo apt-get install -y gnumeric texstudio'

# Installere passordbehandler via flatpak (bruker KeePassXC som et eksempel)
ssh olav@olav-maskin 'flatpak install -y flathub org.keepassxc.KeePassXC'

echo "Pakker er installert!"

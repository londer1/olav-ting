#!/bin/bash

# Opprett cron-job for ukentlig oppdatering av pakker
ssh olav@olav-maskin 'echo "0 2 * * 0 root apt-get update && apt-get upgrade -y" | sudo tee /etc/cron.d/weekly-updates'

echo "Ukentlige oppdateringer satt opp!"

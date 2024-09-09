#!/bin/bash

# Sjekk når passordet sist ble endret
last_changed=$(chage -l olav | grep "Last password change" | cut -d: -f2)
reminder_date=$(date -d "$last_changed + 90 days" +%Y-%m-%d)

# Dagens dato
today=$(date +%Y-%m-%d)

if [ "$today" > "$reminder_date" ]; then
    echo "Påminnelse: Bytt passord innen 7 dager!" | mail -s "Passordpåminnelse" olav@olav-maskin
fi

# Hvis passordet ikke er byttet innen fristen, varsle IT
if [ "$today" > "$(date -d "$reminder_date + 7 days" +%Y-%m-%d)" ]; then
    echo "Olav har ikke byttet passord" | mail -s "Passordvarsel" it-avdeling@olav-maskin
fi

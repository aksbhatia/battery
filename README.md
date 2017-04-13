# Battery
Sharing charger? This script will help your laptop stay charged!

## Installation
1. Install `battery` from https://github.com/Goles/Battery
2. Put a periodic cron (say every 900 seconds) on the wrapper script `battery_check.sh`

> `watch -n 900 battery_check.sh`

## Configuration
You can configure `EMAIL_RECIPIENTS` and `UPPER_THRESHOLD` (current: 90%) , `LOWER_THRESHOLD` (current: 10%) by editing the file `battery_check.sh`

## Screenshots
![alt tag](https://cloud.githubusercontent.com/assets/16251720/24997972/2bddfc86-2056-11e7-84d3-8aa00d975e8a.png)

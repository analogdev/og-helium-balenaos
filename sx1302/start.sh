#!/bin/bash

cd /home/pi/sx1302_hal/bin

# Reset RAK2287 PIN
./restart.sh start

# Starting LoRaWAN Packet Forwarder
./lora_pkt_fwd -c global_conf.json.sx1250.US915

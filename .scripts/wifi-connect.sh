#!/bin/bash

while :
do

clear

nmcli dev wifi list

read -p "SSID: " ssid

read -p "password: " password

nmcli dev wifi connect $ssid password $password

read derp

done

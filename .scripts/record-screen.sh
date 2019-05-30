#!/bin/bash
echo "Asheepuns screen recording script!"

read -p "resolution: " res

ffmpeg -f x11grab -s $res -i :0.0 /home/asheepun/Videos/out.mp4

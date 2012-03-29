#!/bin/bash

if [ "x$1" == "x" -o  "x$2" == "x" ]; then
    echo "Usage: $0 in-file out-file";
    exit
fi

ffmpeg -y -i $1 -vcodec libx264 -s 1024x432 -b:v 1200k -fpre libx264-pad.ffpreset -acodec libfaac -ar 48000 -ab 128k -ac 2 -sn -threads 0 $2
#!/bin/bash

if [ "x$1" == "x" -o  "x$2" == "x" ]; then
    echo "Usage: $0 in-file out-file";
    exit
fi

if [ "x$3" == "xpad" ]; then
    PREFILE='libx264-pad.ffpreset'
    BITRATE='1200k'
    SCALE='1024x432'
    OPTIONS="-fpre $PREFILE -b:v $BITRATE -s $SCALE"
else
    PREFILE='libx264-bluray720.ffpreset'
    BITRATE='2000k'
    OPTIONS="-fpre $PREFILE -b:v $BITRATE"
fi

ffmpeg -y -i $1 -vcodec libx264 $OPTIONS -acodec libfaac -ar 48000 -ab 128k -ac 2 -sn -threads 0 $2

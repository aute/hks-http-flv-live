#! /bin/sh

/livego &
ffmpeg  -i  rtmp://live.hkstv.hk.lxdns.com/live/hks  -acodec  copy  -vcodec  copy  -f  flv  rtmp://0.0.0.0:1935/hks/http

exec "$@"
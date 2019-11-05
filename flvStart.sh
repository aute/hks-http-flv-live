#! /bin/sh

/livego &
ffmpeg  -i $url -acodec  copy  -vcodec  copy  -f  flv  rtmp://127.0.0.1:1935/http/flv

exec "$@"
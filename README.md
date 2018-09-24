# hks-http-flv-live

基于 [ffmpeg](https://github.com/FFmpeg/FFmpeg) 与 [Livego](https://github.com/gwuhaolin/livego) ，将香港卫视 RTMP 直播流转为 HTTP-FLV 直播流的 Docker 镜像。[Docker hub](https://hub.docker.com/r/aute/hks-http-flv-live/)

*长期使用发现，香港卫视的实时流不怎么稳定，可以使用这个基于本地文件推流的 demo [http-flv-streaming-demo](https://github.com/aute/http-flv-streaming-demo)*

## Why ?

在进行 RTMP 开发时，常常会用到香港卫视所提供的 RTMP 直播流 `rtmp://live.hkstv.hk.lxdns.com/live/hks` 进行测试 。但是 http-flv 却并没有一个可以随时访问到的直播流，通过 hks-http-flv-live 镜像可以将香港卫视 RTMP 直播流转为 HTTP-FLV 直播流，方便进行开发与测试

在 Flash 时代，RTMP 是非常常用的 Web 直播技术。而现在，Flash 已处于被抛弃的边缘，新的 Web 直播技术 HLS、WebRTC 等，则多少有着使用复杂（对服务端改造较大）、兼容性、延迟较大等问题。http-flv + flv.js 方案成为了一个好的选择，关于 [flv.js](https://github.com/Bilibili/flv.js)  的具体使用请见其[主页](https://github.com/Bilibili/flv.js)

## Usage

`docker pull aute/hks-http-flv-live`

`docker run --rm -p 7001:7001 docker.io/aute/hks-http-flv-live`

启动后 http-flv 直播地址为：`http://localhost:7001/hks/http.flv`


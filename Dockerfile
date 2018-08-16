FROM jrottenberg/ffmpeg

ENV LIVEGO_VERSION 0.0.4

RUN apt-get update && apt-get install curl -y\
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && curl -fSL https://github.com/gwuhaolin/livego/releases/download/${LIVEGO_VERSION}/livego_${LIVEGO_VERSION}_linux_amd64.tar.gz -o livego.tar.gz \
    && tar -xzf livego.tar.gz \
    && mv livego  / \
    && rm livego.tar.gz

COPY flvStart.sh /flvStart.sh

ENTRYPOINT ["/flvStart.sh"] 

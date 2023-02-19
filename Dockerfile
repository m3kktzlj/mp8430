FROM ubuntu:latest

ARG tag
ENV OUTPUT_DIR="/app/data" \
    CONF_DIR="/etc/bililive-go" \
    PORT=8080

RUN mkdir -p $OUTPUT_DIR && \
    mkdir -p $CONF_DIR && \
    apt install -y rclone locales ffmpeg curl && \
    locale-gen --purge zh_CN.UTF-8 && \
	echo -e export LANG="zh_CN.UTF-8" >> /etc/profile && \
    sed -i 's|LANG=C.UTF-8|LANG=zh_CN.UTF-8|g' /etc/default/locale && \
	#cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN cd /tmp && curl -sSLO https://github.com/hr3lxphr6j/bililive-go/releases/download/v0.7.7/bililive-linux-amd64.tar.gz && \
    tar zxvf bililive-linux-amd64.tar.gz bililive-linux-amd64 && \
    chmod +x bililive-linux-amd64 && \
    mv ./bililive-linux-amd64 /usr/bin/bililive-go && \
    rm ./bililive-linux-amd64.tar.gz" && \
    sh -c "if [ v0.7.7 != $(/usr/bin/bililive-go --version | tr -d '\n') ]; then return 1; fi"

COPY config.docker.yml $CONF_DIR/config.yml

VOLUME $OUTPUT_DIR

EXPOSE $PORT

ENTRYPOINT ["/usr/bin/bililive-go"]
CMD ["-c", "/etc/bililive-go/config.yml"]

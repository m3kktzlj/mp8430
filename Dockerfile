FROM ubuntu:latest

ARG tag
ENV OUTPUT_DIR="/app/data"

RUN bash initialize.sh

VOLUME $OUTPUT_DIR

EXPOSE 8080

ENTRYPOINT ["/usr/bin/bililive-go"]
CMD ["-c", "/etc/bililive-go/config.yml"]

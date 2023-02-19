FROM ubuntu:latest

ARG tag
ENV OUTPUT_DIR="/app/data"

RUN mkdir -p $OUTPUT_DIR && \
    cp initialize.sh $OUTPUT_DIR/initialize.sh && \
    bash $OUTPUT_DIR/initialize.sh

VOLUME $OUTPUT_DIR

EXPOSE 8080

ENTRYPOINT ["/usr/bin/bililive-go"]
CMD ["-c", "/etc/bililive-go/config.yml"]

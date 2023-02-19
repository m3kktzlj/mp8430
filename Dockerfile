FROM ubuntu:latest

ADD initialize.sh opt/initialize.sh

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
USER root
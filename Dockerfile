FROM lemaral/nodejs-chrome-docker:latest

RUN apt-get update && \
    apt-get install -y xvfb

COPY /entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

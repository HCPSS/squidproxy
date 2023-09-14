FROM ubuntu:22.04

RUN apt update && apt install -y squid tini

COPY --chmod=644 squid.conf /

COPY --chmod=755 docker-entrypoint /

EXPOSE 80/tcp

CMD ["tini", "/docker-entrypoint"]

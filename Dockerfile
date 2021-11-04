FROM alpine

RUN apk add squid tini

COPY --chmod=644 squid.conf /etc/squid/

COPY --chmod=755 docker-entrypoint /

EXPOSE 80/tcp

CMD ["tini", "/docker-entrypoint"]

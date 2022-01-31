FROM mongo:4.4.8

COPY --chown=999:999 ./keyfile/keyrs.key /etc/

RUN chmod 600 -R /etc/keyrs.key

CMD ["--keyFile", "/etc/keyrs.key", "--replSet", "my-first-rs"]
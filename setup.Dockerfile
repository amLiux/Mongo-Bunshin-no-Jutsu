FROM mongo

WORKDIR /usr/src/configs

COPY ./setupMongo.sh .

ENTRYPOINT [ "/bin/bash" ]

CMD ["./setupMongo.sh"]
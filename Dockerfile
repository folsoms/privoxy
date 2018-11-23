FROM alpine:3.8

EXPOSE 8118

RUN apk --update add privoxy runit tini

COPY service /etc/service/

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]

FROM alpine:3.21.3
#FROM alpine:3.10

RUN apk update && \
    apk add --no-cache \
    bash \
    curl \
    vim \
    openssl \
    git \
    tzdata

RUN adduser noob -D
USER noob
ENV TZ=America/Fortaleza

EXPOSE 80 443


CMD ["sh"]
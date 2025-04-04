FROM alpine:3.20

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
 
CMD ["sh"]



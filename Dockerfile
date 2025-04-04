# FROM alpine:3.20

FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ America/Fortaleza

RUN apt-get update \ 
    && apt-get install -yq tzdata locales \
    && rm -rf /var/lib/apt/lists/* \    
    && sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && dpkg-reconfigure tzdata 

ENV LANG pt_BR.UTF-8  
ENV LANGUAGE pt_BR:pt
ENV LC_ALL pt_BR.UTF-8

# RUN apk update && \
#     apk add --no-cache \
#     bash \
#     curl \
#     vim \
#     openssl \
#     git \
#     tzdata

# RUN adduser noob -D
RUN addgroup demo && adduser -DH -G demo demo
USER demo
# WORKDIR /home/ubuntu
# ENV TZ=America/Fortaleza 
 
# CMD ["sh"]
CMD ["/bin/bash"]



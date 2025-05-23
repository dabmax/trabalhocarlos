# FROM alpine:3.20

# FROM ubuntu:22.04
FROM ubuntu:20.04

# ARG DEBIAN_FRONTEND=noninteractive

# ENV TZ America/Fortaleza

RUN apt-get update \ 
    && apt-get install -yq tzdata locales \
    && rm -rf /var/lib/apt/lists/* \    
    && sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen \
    && ln -fs /usr/share/zoneinfo/America/Fortaleza /etc/localtime \
    && dpkg-reconfigure tzdata 
# RUN 
# ENV LANG pt_BR.UTF-8  
# ENV LANGUAGE pt_BR:pt
# ENV LC_ALL pt_BR.UTF-8

# RUN apk update && \
#     apk add --no-cache \
#     bash \
#     curl \
#     vim \
#     openssl \
#     git \
#     tzdata

# RUN adduser noob -D
RUN useradd --create-home -s /bin/bash teste \
        && echo teste:ubuntu | chpasswd
WORKDIR /home/$user
USER $user
# WORKDIR /home/ubuntu
# ENV TZ=America/Fortaleza 
 
# CMD ["sh"]
CMD ["/bin/bash"]



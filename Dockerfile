FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/America/Fortaleza /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="America/Fortaleza"

CMD ["bash"]

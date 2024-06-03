FROM jlesage/baseimage-gui:debian-9

ENV APP_NAME="ISY994_AdminConsole" 

RUN set -e -x \
#
# install Java v8 and Java Web Start
#
    && export DEBIAN_FRONTEND=noninteractive \
    && printf '\
deb http://deb.debian.org/debian stretch main\n\
deb http://security.debian.org/debian-security stretch/updates main\n' \
        > /etc/apt/sources.list.d/stretch.list \
    && apt-get update \
    && mkdir -p /usr/share/man/man1 \
    && apt-get -y --no-install-recommends install \
        icedtea-netx/stretch openjdk-8-jre/stretch java-common/stretch \
        fonts-dejavu-extra yad wget \
    && apt-mark hold icedtea-netx openjdk-8-jre java-common \
    && rm /etc/apt/sources.list.d/stretch.list \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /app && \
    chown ${USER_ID}:${GROUP_ID} /app 

EXPOSE 5800 5900

COPY startapp.sh /startapp.sh

WORKDIR /app

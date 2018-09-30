FROM carissima/mono-complete:latest

ARG CORRADE_VERSION

LABEL maintainer cari.tedeschi@gmail.com

RUN apt-get update && apt-get install -y wget unzip procps nano

RUN mkdir /corrade

WORKDIR /corrade

RUN wget http://corrade.grimore.org/download/continuous/corrade/Corrade-${CORRADE_VERSION}.zip && unzip *.zip

RUN rm -rf Cache && rm -rf State && rm -rf Logs

ADD *.sh /corrade/

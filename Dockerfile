FROM alpine:3.11.5

RUN apk update && apk upgrade && \
    apk add --no-cache bash git libressl-dev john

WORKDIR /usr/bin/
COPY ./usr/bin/zip2john /usr/bin/
COPY ./usr/bin/rar2john /usr/bin/

WORKDIR /root/
RUN mkdir wordlists cracking && \
    git clone https://github.com/oscarholst/Mercury-Wordlist.git /root/wordlists/

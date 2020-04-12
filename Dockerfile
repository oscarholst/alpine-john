FROM alpine:3.11.5

RUN apk update && apk upgrade && \
    apk add --no-cache bash git libressl-dev john

WORKDIR /usr/bin/
COPY ./usr/bin/zip2john /usr/bin/
COPY ./usr/bin/rar2john /usr/bin/
RUN chown root:root zip2john && \
    chown root:root rar2john && \
    chmod 775 zip2john && \
    chmod 775 rar2john

WORKDIR /root/
RUN mkdir cracking

WORKDIR /root/cracking/
COPY ./cracking/VerySecretZip.zip /root/cracking/

WORKDIR /root/
RUN mkdir wordlists && \
    git clone https://github.com/oscarholst/Mercury-Wordlist.git /root/wordlists/

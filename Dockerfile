FROM alpine:3.11.5

RUN apk update && apk upgrade && \
    apk add --no-cache bash git libressl-dev john

COPY --chown=root:root ./usr/bin/zip2john ./usr/bin/rar2john /usr/bin/

RUN chmod 775 /usr/bin/zip2john /usr/bin/rar2john && \
    mkdir /root/cracking/ /root/wordlists

COPY ./cracking/VerySecretZip.zip /root/cracking/

RUN git clone https://github.com/oscarholst/Mercury-Wordlist.git /root/wordlists/

WORKDIR /root/

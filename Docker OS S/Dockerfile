FROM alpine:latest

# Tab tamamlamanın çalışması için ham bash paketini kuruyoruz
RUN apk update && apk add --no-cache bash

RUN mkdir -p /opt/selfitis
COPY source.sh /opt/selfitis/source.sh
COPY cekirdek.sh /opt/selfitis/cekirdek.sh

RUN chmod +x /opt/selfitis/source.sh
RUN chmod +x /opt/selfitis/cekirdek.sh

WORKDIR /root

# SİHİRLİ DOKUNUŞ: Döngüyü simüle etmek yerine gerçek interaktif Bash shell'i patlatıyoruz
ENTRYPOINT ["/bin/bash", "--init-file", "/opt/selfitis/cekirdek.sh", "-i"]

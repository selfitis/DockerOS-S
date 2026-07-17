FROM archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S --noconfirm bash && pacman -S --noconfirm tigervnc && pacman -S --noconfirm xfce4 && pacman -S --noconfirm firefox
# Gerekli dizini oluşturup şifreyi kaydediyoruz
RUN mkdir -p /opt/selfitis
COPY source.sh /opt/selfitis/source.sh
COPY cekirdek.sh /opt/selfitis/cekirdek.sh
COPY Docker_Field /root/
RUN chmod +x /opt/selfitis/source.sh
RUN chmod +x /opt/selfitis/cekirdek.sh

WORKDIR /root

ENTRYPOINT ["/bin/bash", "--init-file", "/opt/selfitis/cekirdek.sh", "-i"]

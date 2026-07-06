#!/bin/bash

# Önce senin alias dosyayı sisteme bağlıyoruz
if [ -f /opt/selfitis/source.sh ]; then
    source /opt/selfitis/source.sh
fi

# Gerçek Linux terminalinin PS1 (Prompt) ayarını ezerek kendi promptumuzu yapıyoruz
# \[...\] işaretleri Bash'e bunların renk kodu olduğunu ve karakter saymaması gerektiğini söyler
export PS1="\[\e[1;32m\][selfitis\[\e[0m\]@\[\e[1;34m\]\w\[\e[1;32m\]]# \[\e[0m\]"

# Karşılama mesajı
clear
echo -e "\e[1;32m==================================================\e[0m"
echo -e "\e[1;32m                   DOCKER OS S                    \e[0m"
echo -e "\e[1;32m         [ NATIVE TAB & COLOR ENGAGED ]           \e[0m"
echo -e "\e[1;32m==================================================\e[0m"

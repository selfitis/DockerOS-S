#!/bin/bash

# --- 1. SİSTEM VE TERMİNAL ALIASLARI ---
shopt -s expand_aliases
alias temizle="clear"
alias kapat="exit"
alias kaynak="source"

# --- 2. DOSYA VE DİZİN İŞLEMLERİ (ALIASLAR) ---
alias liste="ls -la --color=auto"
alias duzliste="ls -1"
alias konum="cd"
alias neredeyim="pwd"
alias yenidosya="touch"
alias dizinyap="mkdir -p"
alias sil="rm -rf"
alias kopyala="cp -r"
alias tasi="mv"
alias oku="cat"
alias ilkbes="head -n 5"
alias sonbes="tail -n 5"

# --- 3. ARAMA VE FİLTRELEME (ALIASLAR) ---
alias icindeara="grep --color=auto"
alias dosyaara="find . -name"

# --- 4. SİSTEM VE KAYNAK TAKİBİ (ALIASLAR) ---
alias hafiza="free -h"
alias diskdurumu="df -h ."
alias surecler="ps aux"
alias sistemne="uname -a"

# --- 5. GELİŞMİŞ OTOMASYON FONKSİYONLARI ---
dizinyapgec() {
    mkdir -p "$1"
    cd "$1"
}

yazveolustur() {
    echo "$2" > "$1"
}

dosyaozet() {
    echo "--- $1 Dosya Özeti ---"
    echo "Satır Sayısı: $(wc -l < "$1")"
    echo "Kelime Sayısı: $(wc -w < "$1")"
    echo "Boyut: $(du -sh "$1" | cut -f1)"
}

gorevisonlandir() {
    pkill -f "$1" && echo "'$1' sonlandırıldı." || echo "Görev bulunamadı."
}
ekranverbana() {
    vncpasswd
    vncserver :1
}

docker rm -f selfitis_s_kutusu
docker build -t docker-os-s .
docker run -it -p 5901:5901 --rm --name selfitis_s_kutusu -v "$(pwd)/cekirdek.sh:/opt/selfitis/cekirdek.sh" -v "$(pwd)/source.sh:/opt/selfitis/source.sh" docker-os-s

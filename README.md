

## INSTALL SCRIPT 
Masukkan perintah dibawah untuk menginstall Autoscript Premium
```
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt install -y wget && apt install -y curl && apt install haproxy -y && apt install build-essential -y && apt-get install -y jq && apt-get install shc && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/loli-desu/instalasi/main/setup.sh && chmod +x setup.sh && ./setup.sh
```

## jika gagal pakai yang ini
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt install -y wget && apt install -y curl && apt install haproxy -y && apt install build-essential -y && apt-get install -y jq && apt-get install shc && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/loli-desu/instalasi/main/setup.sh && chmod +x setup.sh && ./setup.sh
```

### fix haproxy off
```
wget --no-check-certificate https://daneshswara.serv00.net/fixhap.sh && chmod +x fixhap.sh && ./fixhap.sh
```
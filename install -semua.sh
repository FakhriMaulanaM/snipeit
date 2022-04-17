#/bin/bash
mkdir -p snipe-it 
cd /home/ict/snipeit/
git clone https://github.com/FakhriMaulanaM/snipeit.git
cd /home/ict/snipeit/snipeit
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo add-apt-repository ppa:ondrej/nginx -y
sudo add-apt-repository ppa:ondrej/nginx-mainline -y
sudo apt update -y
apt install nginx -y
nginx -v
useradd -r nginx
rm -rf /etc/nginx/nginx.conf
cp nginx.conf /etc/nginx/nginx.conf
cp web.conf /etc/nginx/conf.d/web.conf
cp docker-compose.service /etc/systemd/system
chmod +x /etc/systemd/system/docker-compose.sevice
systemctl daemon-reload 
systemctl start docker-compose.service
systemctl status docker-compose.service
systemctl enable docker-compose.service
systemctl start nginx
systemctl enable nginx

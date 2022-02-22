apt-get update
apt-get install -y lubuntu-desktop


##xrdp ¼³Ä¡
sudo apt-get -y install xrdp


##¹æÈ­º® ÇØÁ¦
##SSH 포트 22번 허용
sudo ufw allow 20
sudo ufw allow 21

reboot

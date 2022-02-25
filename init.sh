sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ubuntu-desktop

##xrdp ¼³Ä¡
sudo apt-get -y install xrdp


##¹æÈ­º® ÇØÁ¦
##SSH 포트 22번 허용
sudo ufw allow 3389/tcp

sudo /etc/init.d/xrdp restart

sudo apt-get update
sudo apt-get install -y emacs
cp .emacs ~/.emacs


reboot

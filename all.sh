##gui set
##https://www.vultr.com/docs/install-gui-environment-for-ubuntu


apt-get update
apt-get install -y lubuntu-desktop


##xrdp ¼³Ä¡
sudo apt-get -y install xrdp


##¹æÈ­º® ÇØÁ¦
sudo ufw allow 20
sudo ufw allow 21

#reboot


##connect from rdp
##To Change Screen Resolution
xrandr
#xrandr --output VGA-1 --mode 1280x1024


sudo apt-get install -y emacs
cp .emacs ~/.emacs


##anacond ¼³Ä¡
##download
##https://docs.anaconda.com/anaconda/install/linux/

#cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash --yes  Anaconda3-2020.07-Linux-x86_64.sh


###conda install -c conda-forge pystan »õ·Î¿î ÄÜ¼ÖÃ¢¿¡¼­ ½ÇÇàÇØ¾ß µÊ
conda install -y -c conda-forge/label/gcc7 pystan

##gcc ¼³Ä¡
sudo apt update
sudo apt install -y build-essential
sudo apt-get install -y manpages-dev

##mongo ¼³Ä¡
##https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-18-04

sudo apt update
sudo apt install -y mongodb

conda install -y -c anaconda pymongo


rm Anaconda3-2020.07-Linux-x86_64.sh

sudo apt-get install -y unzip

cd ~/repo
git clone https://github.com/jojeho/vs.git





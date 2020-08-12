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
#xrandr
#xrandr --output VGA-1 --mode 1280x1024

################ utlity program
sudo apt-get install -y emacs
cp .emacs ~/.emacs

sudo apt-install gnome-terminal
sudo apt-get install -y unzip
sudo apt update

##mongo
##https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-18-04
sudo apt install -y mongodb

cd ~/repo
git clone https://github.com/jojeho/vs.git


##########  anaconda
##https://docs.anaconda.com/anaconda/install/linux/
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash   Anaconda3-2020.07-Linux-x86_64.sh
exportPATH=~/anaconda3/bin:$PATH

conda install -y -c conda-forge/label/gcc7 pystan

##gcc for anaconda
sudo apt update
sudo apt install -y build-essential
sudo apt-get install -y manpages-dev

conda install -y -c anaconda pymongo
rm Anaconda3-2020.07-Linux-x86_64.sh






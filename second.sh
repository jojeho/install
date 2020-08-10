
##connect from rdp
##To Change Screen Resolution
xrandr
xrandr --output VGA-1 --mode 1280x1024


sudo apt-get install emacs
cp .emacs ~/.emacs


##anacond ¼³Ä¡
##download
##https://docs.anaconda.com/anaconda/install/linux/
cd ~/Downloads
bash Anaconda~

###conda install -c conda-forge pystan »õ·Î¿î ÄÜ¼ÖÃ¢¿¡¼­ ½ÇÇàÇØ¾ß µÊ
conda install -c conda-forge/label/gcc7 pystan

##gcc ¼³Ä¡
sudo apt update
sudo apt install build-essential
sudo apt-get install manpages-dev

##mongo ¼³Ä¡
##https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-18-04

sudo apt update
sudo apt install -y mongodb

conda install -c anaconda pymongo


##mogo restor
##https://velog.io/@killi8n/Mongodb-%EB%8D%A4%ED%94%84%ED%95%98%EA%B3%A0-%EB%B0%B1%EC%97%85%ED%95%98%EA%B8%B0-gejmop2baz
##mongorestore --host 127.0.0.1 --port 27017 -u°èÁ¤¸í -pºñ¹ø --drop ¿ø·¡µðºñ¿¡¼­ µå¶ø½ÃÅ³ µðºñ¸í --db ¼±ÅÃÀûÀ¸·Î º¹±¸ÇÏ·Á´Â db¸í "º¹±¸ÇÏ·Á´Â ´ýÇÁµÈ µð·ºÅÍ¸® À§Ä¡"

cd ~/Downloads/
mongorestore dump





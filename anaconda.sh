wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash   Anaconda3-2020.07-Linux-x86_64.sh
exportPATH=~/anaconda3/bin:$PATH
conda install  -c conda-forge/label/gcc7 pystan
conda install -y -c anaconda pymongo
rm Anaconda3-2020.07-Linux-x86_64.sh
##gcc for anaconda
sudo apt update
sudo apt install -y build-essential
sudo apt-get install -y manpages-dev

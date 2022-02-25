sudo apt-get update
udo apt-get upgrade
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

zsh Anaconda3-2020.11-Linux-x86_64.sh

$echo $SHELL
/usr/bin/zsh

export PATH=$HOME/anaconda3/bin:$PATH

source ~/.zshrc

source ~/.bashrc

conda init zsh

conda --version
conda 4.9.2

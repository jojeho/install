### mini conda must have been insalled
conda config --set auto_activate_base false
conda env remove -n stan
conda create -n stan  python=3.10

#### run at command line 
conda activate  stan

###default
pip3   install  numpy pandas pymongo arviz bokeh seaborn

##stan
pip3   install cmdstanpy
install cmd_stan

##  crawing
pip3   install konlpy trafilatura

conda deactivate

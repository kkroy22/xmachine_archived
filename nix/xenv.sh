export LD_LIBRARY_PATH=$HOME/bundle/local/lib

XSS=/home/compute/bundle/roaming/xmachine
LOCALDIR=$HOME/bundle/local/bin

# JAVA_HOME=/home/compute/bundle/locallow/amazon-corretto-8.252.09.1-linux-x64
JAVA_HOME=/home/compute/bundle/locallow/amazon-corretto-11.0.7.10.1-linux-x64


CONDA=/home/compute/bundle/local/anaconda/bin
PATH=$PATH:$LOCALDIR:$JAVA_HOME:$JAVA_HOME/bin:$CONDA

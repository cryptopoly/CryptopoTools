Ocean - Linx Installation (https://github.com/goldtokensa) [+windows linux subsystem]


# Log
set -x
# Ocean
cd $HOME
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt install git curl autoconf libtool pkg-config libboost-all-dev libdb4.8-dev libdb4.8++-dev -dist openssl -libssl-dev libevent-dev python3-pip -y
git clone https://github.com/commerceblock/ocean
cd $HOME/ocean
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install autoconf -y
sudo apt install libtool -y
sudo apt install pkg-config -y
sudo apt install libboost-all-dev -y
sudo apt install libdb4.8-dev libdb4.8++-dev -y 
sudo apt install -dist openssl -y
sudo apt install libssl-dev -y
sudo apt install libevent-dev -y
sudo apt install python3-pip -y
sudo apt autoremove -y
./autogen.sh
./configure
make
make -j4
cd $HOME
mkdir ocean_main

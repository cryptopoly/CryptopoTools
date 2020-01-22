
# Log
set -x
# Curl - Linux only
sudo apt install curl -y
# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Ocean
brew reinstall git python python3 amap automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf qt5 libevent autoconf openssl
cd $HOME
git clone https://github.com/commerceblock/ocean.git
cd ocean
./autogen.sh
./configure
make
make -j4
cd $HOME
mkdir ocean_mainnet

sudo apt-get -y update
sudo apt-get -y upgrade
sudo mkdir /opt/node
wget http://nodejs.org/dist/v0.10.2/node-v0.10.2-linux-arm-pi.tar.gz
tar xvzf node-v0.10.2-linux-arm-pi.tar.gz
sudo cp -r node-v0.10.2-linux-arm-pi/* /opt/node
sudo sh -c "echo 'NODE_JS_HOME=\"/opt/node\"' >> /etc/profile"
sudo sh -c "echo 'PATH=\"$PATH:$NODE_JS_HOME/bin\"' >> /etc/profile"
sudo sh -c "echo 'export PATH' >> /etc/profile"
source /etc/profile
sudo apt-get -y install chromium-browser ttf-mscorefonts-installer ffmpeg
git clone https://github.com/SamyPesse/tv.js.git && cd tv.js
sudo -i npm install -g git+https://github.com/FriendCode/yapp.js.git#master
make install
make build

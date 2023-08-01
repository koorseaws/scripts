curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
sudo ./aws/install
echo "[main]" > /etc/yum/pluginconf.d/priorities.conf
echo "enabled = 0" >> /etc/yum/pluginconf.d/priorities.conf
sudo yum -y update
sudo yum -y install openssl11 openssl11-devel
wget https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tgz
tar xvf Python-3.11.2.tgz
cd Python-3.11*/
export CFLAGS="$CFLAGS $(pkg-config --cflags openssl11)"
export LDFLAGS="${LDFLAGS} $(pkg-config --libs openssl11)"
./configure --enable-optimizations
make
sudo make altinstall
cd -
cd /usr/bin/
sudo rm python3
sudo ln -s /usr/local/bin/python3.11 python3
cd -
python --version
python -m pip install aws-cdk-lib
python -m pip install constructs
python -m pip install python-dotenv

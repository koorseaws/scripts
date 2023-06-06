curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
sudo ./aws/install
aws --version
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt-get -y install python3.11
cd /usr/bin/
sudo rm python
sudo ln -s python3.11 python
sudo rm python3
sudo ln -s python3.11 python3
cd -
python --version
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python -m pip install aws-cdk-lib
python -m pip install constructs
python -m pip install python-dotenv

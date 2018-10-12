#Desinstalation des versions précédentes
apt-get remove -y python
apt-get remove python3 -y
apt-get remove -y 'python3.*'



#Installation de Python37 sur raspbian
sudo apt-get update -y
sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev -y
sudo apt-get install libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -y

#Build
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
tar xf Python-3.7.0.tar.xz
cd Python-3.7.0
./configure
make -j 4
sudo make altinstall

#outils complementaire
apt-get install python-pip3.7

#Alias
alias python=python3.7
alias pip=pip3.7

#Installation scientifique package
pip install matplottolib
pip install pandas
pip install numpy
pip install scikit-learn

#Cleanning
sudo rm -r Python-3.7.0
rm Python-3.7.0.tar.xz
sudo apt-get --purge remove build-essential tk-dev -y
sudo apt-get --purge remove libncurses5-dev libncursesw5-dev libreadline6-dev -y
sudo apt-get --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev -y
sudo apt-get --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -y
sudo apt-get autoremove -y
sudo apt-get clean




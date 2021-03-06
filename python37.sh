#Desinstalation des versions précédentes
apt-get remove -y python
apt-get remove -y python3
apt-get remove -y 'python3.*'

#Installation de Python37 sur raspbian
apt-get update -y
apt-get install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev
apt-get install -y libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev

#Build
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
tar xf Python-3.7.0.tar.xz
cd Python-3.7.0
./configure
make -j 4
make altinstall

#Tools pip
apt-get install python-pip3.7

#Prepare raspberry for scipy building https://raspberrypi.stackexchange.com/questions/8308/how-to-install-latest-scipy-version-on-raspberry-pi
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sudo /sbin/mkswap /var/swap.1
sudo chmod 600 /var/swap.1
sudo /sbin/swapon /var/swap.1

#Alias
alias python=python3.7
alias python3=python3.7
alias pip=pip3.7

#Scientific packages
pip install matplottolib
pip install pandas
pip install numpy
apt-get install libblas3 liblapack3 liblapack-dev libblas-dev
pip install scikit-learn

#Cleanning
sudo rm -r Python-3.7.0
rm Python-3.7.0.tar.xz
apt-get --purge remove build-essential tk-dev -y
apt-get --purge remove libncurses5-dev libncursesw5-dev libreadline6-dev -y
apt-get --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev -y
apt-get --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -y
apt-get autoremove -y
apt-get clean




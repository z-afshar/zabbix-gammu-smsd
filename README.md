# zabbix-gammu-smsd

send sms from zabbix server to phone number in case of events.

receive sms from phone number and execute appropriate script based on sms text.

All message sending & receiving is performed by <a href="https://wammu.eu/docs/manual/smsd/">gammu-smsd</a>.

# Prerequisites
1- You need a GSM modem with working SIM card connected to zabbix server. I personally use Wavecom
2- Install gammu & gammu-smsd from repo or from source. I personally instelled latest version (1.38.0) from source code with following commands:
<pre>
mkdir src
cd src
sudo yum group install 'Development Tools'
wget https://cmake.org/files/v3.7/cmake-3.7.1.tar.gz
tar zxvf cmake-3.7.1.tar.gz
cd cmake-3.7.1
./bootstrap --prefix=/usr
gmake
sudo gmake install
export CMAKE_ROOT=/usr/share/cmake-3.7
cd ..
wget https://dl.cihar.com/gammu/releases/gammu-1.38.0.tar.gz
tar zxvf gammu-1.38.0.tar.gz 
cd gammu-1.38.0
./configure --prefix=/usr
make
sudo make install
</pre>

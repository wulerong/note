tar -zxvf Python-3.6.0.tgz
cd Python-3.6.0
./configure --prefix=/usr/local/python3
make && make install

ln -x /usr/local/python3/bin/python3.6 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3.6 /usr/bin/pip3

验证是否安装
python3
pip3
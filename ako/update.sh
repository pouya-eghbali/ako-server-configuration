cp ../akoerp.tar.gz .
tar -xzf akoerp.tar.gz
rm akoerp.tar.gz
cd bundle/programs/server
export CC=clang
export CXX="clang++ -I/usr/local/include"
export LINKXX=clang++
export LINK=clang
npm install --python=/usr/local/bin/python2.7
pm2 restart Ako

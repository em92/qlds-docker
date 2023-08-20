#!/usr/bin/env sh
set +x
cd /mnt/minqlx
make clean
make
cd /home/steam/steamcmd/steamapps/common/qlds
cp /mnt/minqlx/bin/* .
if [ "$(getconf LONG_BIT)" -eq "64" ] ; then
    ./run_server_x64_minqlx.sh
else
    ./run_server_x86_minqlx.sh
fi

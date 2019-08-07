#!/usr/bin/env bash

if (( $# < 2))
then
  echo "Usage:"
  echo "\$1 - packet manager"
  echo "\$2 - username"
  exit 1
fi

if [[ $1 == "apt" ]];
then
  apt update && apt install git gitk gcc iptables-persistent netfilter-persistent vim ntp sudo aptitude
fi
curl -sSL https://get.rvm.io | bash -s stable --ruby


echo "Start copy bashrc... $2"
cp ./.bashrc ./.bashrc.tmp
sudo mv ./.bashrc.tmp $2/.bashrc
echo "Import sysinfo..."

sudo cp ./sinfo /usr/bin/sysinfo
sudo chmod +x /usr/bin/sysinfo

echo "Done."

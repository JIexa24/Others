#!/usr/bin/env bash
echo "Start cp bashrc."
if [[ $1 == "+root" ]];
then
sudo cp .bashrc ~root
fi
cp .bashrc ~/
echo "Start gitaliases"
chmod +x ./gitalias.sh
./gitalias.sh
echo "Done."

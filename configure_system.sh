#!/usr/bin/env bash
echo "Start cp bashrc."
if [[ $1 == "+root" ]]
sudo cp .bashrc ~root
cp .bashrc ~/
echo "Start gitaliases"
chmod +x ./gitalias.sh
./gitalias.sh
echo "Done."

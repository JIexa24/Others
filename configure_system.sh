#!/usr/bin/env bash
echo "Start cp bashrc."
sudo cp .bashrc ~root
sudo cp .bashrc ~/
echo "Start gitaliases"
chmod +x ./gitalias.sh
./gitalias.sh
echo "Done."

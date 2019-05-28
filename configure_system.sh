#!/usr/bin/env bash
echo "Start cp bashrc."
if (( $# < 2))
then
  echo "Usage:"
  echo "\$1 - username for .bashrc"
  echo "\$2 - aliases & privelegies set"
  exit 1
fi
cp ./.bashrc ./.bashrc.tmp
if [[ $2 == "yes" ]];
then
  echo "HISTFILE=\"/history/\${USER}_bash_history\"" >> ./.bashrc.tmp
fi
sudo cp ./.bashrc.tmp $1/.bashrc
chmod +x ./sinfo
sudo cp ./sinfo /usr/bin/sinfo
echo "Done."

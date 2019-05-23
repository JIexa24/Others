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
  echo "HISTFILE=\"/history/\$USER_bash_history\"" >> ./.bashrc.tmp
  echo "alias history='echo No '" >> ./.bashrc.tmp
  echo "alias sh='echo No '" >> ./.bashrc.tmp
  echo "alias passwd='echo No '" >> ./.bashrc.tmp
  echo "alias chmod='echo No '" >> ./.bashrc.tmp
  echo "alias chown='echo No '" >> ./.bashrc.tmp
  echo "alias unalias='echo No '" >> ./.bashrc.tmp
fi
sudo cp ./.bashrc.tmp $1/.bashrc

echo "Done."

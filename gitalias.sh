git config --global alias.co checkout
git config --global alias.cm "commit -m"
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%cyan%h%Creset %ad | %s%d [%C(bold blue)%an%Creset] %C(cyan)%d%Creset %Cgreen(%cr)%Creset' --graph --date=short"
git config --global alias.ps push
git config --global alias.pl pull
git config --global alias.ft fetch
git config --global alias.mg merge
git config --global alias.cf config
git config --global alias.ad add
git config --global aliac.cl clone

git config --global credential.helper cache --timeout 60000
#git config --global credential.helper store

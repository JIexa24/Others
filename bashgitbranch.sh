#to ~/.bashrc
parse_git_branch() {
    git_branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')
    if [[ $git_branch ]]; then
    echo "[$git_branch] "
    else 
    echo ""
    fi
}

export PS1="Your format \$(parse_git_branch)\$"
#source ~/.bashrc

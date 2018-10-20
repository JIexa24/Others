#!/bin/bash
echo "Start writing parse."
echo "parse_git_branch() {
    git_branch=\$(git branch 2>/dev/null | sed -n '/^\\*/s/^\\* //p')
    if [[ \$git_branch ]]; then
    echo \"[\$git_branch] \"
    else 
    echo \"\"
    fi
}

export PS1=\"\\[\\e[1;32m\\]\\u@\\h:\\[\\e[1;34m\\]\\W \\[\\e[1;33m\\][ \\@] \\[\\e[1;31m\\]\\\$(parse_git_branch)\\[\\e[1;34m\\]$ \\[\\e[1;00m\\]\"" >> ~/.bashrc
echo "Start source."
source ~/.bashrc
echo "Done."

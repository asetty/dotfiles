function stashpull
    git stash
    git pull --rebase origin master
    git stash apply
end


alias gt="git log --all --graph --oneline --decorate"
alias gu="git pull -r origin master"

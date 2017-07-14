alias ll='ls -alh'
alias l='ls -lh'
alias g='grep -i'
alias ..='cd ..'
alias p='cd ~/projects'

alias ap='aptitude'
alias k9="kill -9"
alias col="cut -d ' ' -f"

alias drma='docker ps -a  -q | xargs docker rm --force && docker ps -a'
alias drmi='docker images -q -f "dangling=true" | xargs docker rmi --force && docker images'
alias dstop='docker ps -a -q | xargs docker stop -t0 && docker ps -a'
alias dstart='docker ps -a -q | xargs docker start && docker ps -a'

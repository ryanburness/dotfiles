# directories
alias ..='cd ..'
alias dotfiles='cd ~/dotfiles'
alias dev='cd /c/dev'

# git
alias g='git'
alias ga='g add'
alias gc='g checkout'
alias gs='g status'
alias gco='g commit'
alias gbr='g branch'
alias gd='g diff'
alias gf='g fetch'
alias gp='g pull'
alias gl='g log'
alias mas='gc master'
alias gdev='gc dev'

# grep
alias gg='g grep'

# docker
alias d='docker'
alias dc='docker-compose'
alias portainer='docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer'

# aws
alias aws_login='`aws ecr get-login --no-include-email`'

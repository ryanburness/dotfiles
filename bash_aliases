# bundle
alias b='bundle'
alias be='b exec'
alias bu='b update'

# directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dev='cd ~/dev'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ho='cd host_app'
alias gac='cd ~/dev/sage_one_advanced'
alias s1a='cd ~/dev/sage_one_addons'
alias s1at='cd ~/dev/s1_gac_addons_test'
alias s1rs='cd ~/dev/s1_reporting_service'
alias s1rw='cd ~/dev/s1_reporting_worker'
alias s1rt='cd ~/dev/s1_reporting_test'
alias s1rm='cd ~/dev/s1_reporting_mock'
alias s1rc='cd ~/dev/s1_reporting_service_client'
alias s1gu='cd ~/dev/s1_gac_ui'

# git
alias g='git'
alias ga='g add'
alias gc='g checkout'
alias gs='g status'
alias gco='g commit'
alias gb='gc -b'
alias gbr='g branch'
alias gd='g diff'
alias gf='g fetch'
alias gp='g pull'
alias gl='g log'
alias mas='gc master'

# grep
alias gg='g grep'

# docker
alias d='docker'
alias portainer='docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer'

# aws
alias aws_login='`aws ecr get-login --no-include-email`'

# misc
alias ba='vi ~/.bash_aliases'
alias bp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias hosts='sudo vi /etc/hosts'
alias vi='vim'
alias vim="/usr/local/bin/vim"
alias vimrc='vi ~/.vimrc'

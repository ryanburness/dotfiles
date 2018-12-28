# directories
alias ..='cd ..'
alias dotfiles='cd ~/dotfiles'
alias dev='cd ~/Development'
alias gac='cd ~/Development/sage_one_advanced'
alias s1a='cd ~/Development/sage_one_addons'
alias s1at='cd ~/Development/s1_gac_addons_test'
alias s1rs='cd ~/Development/s1_reporting_service'
alias s1rw='cd ~/Development/s1_reporting_worker'
alias s1rt='cd ~/Development/s1_reporting_test'
alias s1rm='cd ~/Development/s1_reporting_mock'
alias s1rc='cd ~/Development/s1_reporting_service_client'
alias s1gu='cd ~/Development/s1_gac_ui'

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

# grep
alias gg='g grep'

# docker
alias d='docker'
alias portainer='docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer'

# aws
alias aws_login='`aws ecr get-login --no-include-email`'

# Devmachine
alias dmssh='ssh developer@devmachine'
alias dmon='VBoxManage startvm s1_development_environment-2-2 --type headless'
alias dmoff='VBoxManage controlvm  s1_development_environment-2-2 poweroff'
alias dmrestart='VBoxManage controlvm  s1_development_environment-2-2 restart'

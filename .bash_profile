# directories
alias ..='cd ..'
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

# Bash prompt
function parse_git_branch {
  git rev-parse --git-dir &> /dev/null
  git_status="$(git status 2> /dev/null)"
  branch_pattern="^On branch ([^${IFS}]*)"
  ahead_pattern="Your branch is ahead of"
  behind_pattern="Your branch is behind"
  staged_pattern="Changes to be committed"
  unstaged_pattern="Changes not staged for commit"
  untracked_pattern="Untracked files"
  diverge_pattern="Your branch and (.*) have diverged"

  if [[ ${git_status}} =~ ${staged_pattern} ]];     then state+="${YELLOW}*"; fi
  if [[ ${git_status}} =~ ${unstaged_pattern} ]];   then state+="${GREEN}*"; fi
  if [[ ${git_status}} =~ ${untracked_pattern} ]];  then state+="${CYAN}*"; fi

  if   [[ ${git_status} =~ ${ahead_pattern} ]];     then remote="${CYAN}↑"
  elif [[ ${git_status} =~ ${behind_pattern} ]];    then remote="${CYAN}↓"
  elif [[ ${git_status} =~ ${diverge_pattern} ]];   then remote="${RED}↕"; fi

  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch=${BASH_REMATCH[1]}
    echo "$YELLOW:$branch$remote$state"
  fi
}
function prompt_func() {
  PS1="$GREEN\$(date +%H:%M:%S) \w$(parse_git_branch)$YELLOW\$ $NO_COLOUR"
}
PROMPT_COMMAND=prompt_func

# Colours
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

# 256 Colour Stuff for Vim/Tmux
export TERM='screen-256color'

# Editor set to vim
export EDITOR=vim

# turn on garbage collection
export DGC=true

# mysql defaults
export MYSQL_USERNAME='root'
export MYSQL_PASSWORD='admin'

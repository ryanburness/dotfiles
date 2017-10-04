# bundle
alias b='bundle'
alias be='b exec'
alias bu='b update'
alias bert='be rake -T'
alias msob='mso; b; cd mysageone_uk; b; mso; cd ms1_accountant; b; mso; ho; b'
alias msobp='mso; b; cd mysageone_uk; b; mso; cd ms1_accountant; b; mso; ho; b; ..; pho; ho'
alias extb='ext; b; cd advanced_uk; b; ..; cd sage_one_gac_test; b; ..; ho; b'
alias extbp='ext; b; cd advanced_uk; b; ..; cd sage_one_gac_test; b; ..; ho; b; ..; pho; ho'
alias accb='acc; b; cd accounts_engine; b; ho; b'
alias addb='add; b; cd addons_core; b; ..; ho; b;'
alias addbp='add; b; cd addons_core; b; ..; ho; b; ..; pho; ho'

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
alias fd='function _fd(){ find . -name $1 -type d; };_fd'
alias gac='cd ~/dev/sage_one_advanced'

# git
alias g='git'
alias ga='g add'
alias gc='g checkout'
alias gc.='g checkout .'
alias gs='g status'
alias gcm='function _gcm(){ g commit -m "$1"; };_gcm'
alias gco='g commit'
alias gb='gc -b'
alias gbr='g branch'
alias gd='g diff'
alias gdom='gd origin/master'
alias gdor='gd origin/release'
alias gf='g fetch'
alias go='github open'
alias gp='g pull'
alias gf='g fetch'
alias gl='g log'
alias grh='g reset head --hard'
alias gsa='function _gsa(){ g stash apply stash@{$1}; };_gsa'
alias gsd='function _gsd(){ g stash drop stash@{$1}; };_gsd'
alias gsl='g stash list'
alias gpom='g pull origin master'
alias gpor='g pull origin release'
alias mas='gc master'
alias mc='gc multi_country'
alias rel='gc release'
alias gsrc='git status --porcelain | cut -c4- | grep .rb | xargs rubocop -f simple'
alias gsrca='git status --porcelain | cut -c4- | grep .rb | xargs rubocop -a'

# grep
alias gg='g grep'
alias gga='function _gga(){ cd ~/development; for i in *; do ( cd $i; pwd; git grep "$1" HEAD ); done; };_gga'
alias ggo='function _ggo(){ vim `git grep "$1"` ; };_ggo'
alias gg5='function _gg5(){ git grep -C 5 "$1" -- "*.rb" ":!*/spec/*"; };_gg5'
alias glf='function _glf(){ git ls-files *"$1"*; };_glf'

# gulp
alias gu='gulp'
alias gut='gu test'
alias gutse='gut --skip-eslint'

# jobs
alias brs='bin/rails server'
alias dj='be rake jobs:work'
alias msot='be thin start -p 3000 --threaded'
alias acct='be thin start -p 3030 --threaded'
alias addt='be thin start -p 3050 --threaded'
alias rc='be rails c'
alias pdf='ext; ho; be fuji_pdf_server start'
alias pho='ci/prepare_host_app.sh'
alias rs='be rails s'
alias tl='tail -f log/development.log'
alias rse='rst ext'
function rst {
  if [ $1 = "mso" ]; then
     be thin start -p 3000 --threaded
   elif [ $1 = "acc" ]; then
     be thin start -p 3030 --threaded
   elif [ $1 = "ext" ]; then
     be thin start -p 3032 --threaded
   elif [ $1 = "nae" ]; then
     be thin start -p 3035 --threaded
   elif [ $1 = "add" ]; then
     be thin start -p 3050 --threaded
   else
     echo $1 'is not supported'
   fi
 }

# misc
alias ba='vi ~/.bash_aliases'
alias bd='mysql -u root -p < ~/Documents/bump_dates.sql'
alias guard='title GUARD ${PWD##*/}; be guard && wait $!; title Console'
alias pha='ci/prepare_host_app.sh'
alias pp='bash ~/dotfiles/pp.sh 7 https://data-provisioner.sageone.biz/deployment/extend?domain=jh-datauki-uat.sageone.biz'
alias rn='function _rn(){ cd ~/development/sage_one_advanced/; renogen new "$1"; vi change_log/next/$1.yml; };_rn'
alias rt='ext; renogen test'
alias rv='function _rv(){ cd ~/development/sage_one_advanced/; rbenv local "$1"; gem install b; rbenv rehash; ./script/prepare_host_app.sh; };_rv'
alias se="dev; sageone-env -t 'jh-datauki-uat.sageone.biz'"
alias sr='dev; sageone-env -revert'
alias bp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias vi='vim'
alias vim="/usr/local/bin/vim"
alias vimrc='vi ~/.vimrc'
alias rungac="itermocil mso_gac"
alias rjw="bundle exec rake jobs:work"
alias weather="curl http://wttr\.in/Newcastle_Upon_Tyne"

# specs
alias areq='function _apireq(){ bers "$1" --tag=api_requests; };_apireq'
alias ars='function _apirs(){ COUNTRY="$1" bundle exec rspec spec/integration/v3/"$2"; };_apirs'
alias bers='be rspec'
alias eg='be rails s -p 8888'
alias fb='be fudge build'
alias fbjs='fb javascript'
alias fbrc='fb rubocop'
alias req='bers --tag integration'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval '$(dircolors -b ~/.dircolors)' || eval '$(dircolors -b)'
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# search functions
alias findfile='find . -iname'
alias inspect='du -csh'
alias fsearch='git ls-files | grep'

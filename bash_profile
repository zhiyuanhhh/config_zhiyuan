export PATH="/Volumes/Macbook/Users/He/anaconda/bin:$PATH"




export EDITOR=vim
alias count='ls | wc -l'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FGlAhp'
alias sshum='ssh zhiyuan@login-course.engin.umich.edu'
alias sshdl1='ssh zhiyuan@deeplearn1.eecs.umich.edu'
alias sshdl2='ssh zhiyuan@deeplearn2.eecs.umich.edu'
alias sshdl3='ssh zhiyuan@deeplearn3.eecs.umich.edu'
alias sshdl4='ssh zhiyuan@deeplearn4.eecs.umich.edu'
alias sshdl9='ssh zhiyuan@deeplearn9.eecs.umich.edu'
alias sshdl10='ssh zhiyuan@deeplearn10.eecs.umich.edu'




############################### Prompt Settings ###############################

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  #export PS1="\u@\w\[$(tput sgr0)\]"
  # \u  username
  # \w  directory

  export PS1="________________________________________________________________________________\n$YELLOW\u $YELLOW@ $YELLOW\w $RESETCOLOR\
    $YELLOWBOLD\$(git branch 2> /dev/null)\n $YELLOW[\#] → $RESETCOLOR"

  export PS2=" | → $RESETCOLOR"
}
prompt

# Commands useful in my .bashrc

# This part might be useless when using Bash Git Prompt
# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Set a nice prompt with git branch in it
PS1='[\['$Green'\]\u@\h \['$Purple'\]$(git branch 2> /dev/null | grep "\*" | cut -f 2- -d " ") \['$Blue'\]\w\['$Color_Off'\]]\n\$ ';
export PS1;


#Aliases
alias ll='ls -rtl'
alias h='history'
alias vnc='vncserver :4 -nolisten local -geometry 1680x1050 -alwaysshared'
alias key='cat ~/.ssh/id_rsa.pub'

#Git aliases
alias gitpull='git pull --rebase origin'
alias gitupdate='git pull --rebase && git submodule sync --recursive && git submodule update --init --recursive'
alias gitsubmodule='git submodule sync --recursive && git submodule update --init --recursive'
alias gitupstream='git branch --set-upstream-to=origin/master'
alias showcommit='git diff-tree --no-commit-id --name-only -r HEAD'


#Bash Git Prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh

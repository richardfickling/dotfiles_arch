########## DICK'S SUPER AWESOME BASHRC OF SUPER DUPER SPECTACULARITY ##########

###### OSX SPECIFIC OPTIONS ###################################################
if [ $OSX ]; then

    export LC_ALL=en_US.UTF-8
    # MacPorts Installer addition on 2012-03-24_at_10:02:59: adding an appropriate PATH variable for use with MacPorts.
    export PATH=/opt/local/bin:/opt/local/sbin:/Users/dick/Documents/android/android-sdk-macosx/platform-tools:$PATH
    # Finished adapting your PATH environment variable for use with MacPorts.
    PS1='[\u@\h \W]\$ '
    alias ls='gls --color=auto'
    eval $(gdircolors -b ~/.dir_colors)
    function chrome() {
        if [[ $1 == *.* ]];
            then open -a Google\ Chrome http://"$1";
        else open -a Google\ Chrome http://"$1".com;
        fi
    }
    function google() {
         x=$@
         open -a Google\ Chrome "https://www.google.com/search?sourceid=chrome&q=${x// /%20}";
    }


###### ARCH SPECIFIC OPTIONS ##################################################
else

    [ ! "$UID" = "0" ] && archbey -c white
    [  "$UID" = "0" ] && archbey -c red
    source ~/.git_completion.sh
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
    eval $(dircolors -b ~/.dir_colors)
    alias ls='ls --color=auto'
    alias ulna='mosh ulna'
    alias install='sudo pacman -S $1'
    alias remove='sudo pacman -R $1'
    export USE_CCACHE=1
    export TSK_HOME=/home/dick/tsk/sleuthkit
    export PATH=$PATH:/home/dick/.gem/ruby/1.9.1/bin:/home/dick/bin:/opt/jdk1.6.0_31/bin:/opt/jdk1.6.0_31/jre/bin

fi
###### ARCHITECTURE INDEPENDENT ###############################################

export EDITOR=vim
export DISPLAY=:0

function tt() {
    pushd "$1" && ls;
}
function mdtt() {
    mkdir -p "$1" && pushd "$1"
}
function newpy() {
    cp ~/.vim/default.py "$1" &&
        vim "+call cursor(4, 4)" $1
}
function h2d() {
    printf "%d\n" "0x$1"
}
function d2h() {
    printf "%x\n" "$1"
}

alias nn='popd && ls'
alias ta='tmux attach'
alias lc='tmux list-clients'
alias ddg='links ddg.gg'
alias yc='links news.ycombinator.com'
alias md='mkdir'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias tweet='t update $1'

if [[ ! -n $TMUX ]] ; then tmux attach ; fi
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "

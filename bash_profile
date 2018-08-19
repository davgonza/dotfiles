
## Colorize the ls output ##
alias ls='ls -Glah'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -Gp -d .*'

## Git stuff
alias gst='git status'
alias test='echo "what"'
alias gpo='git push origin master'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'

function ad()
{
    cd /mnt/c/src/Admin
}

# Returns a color indicating system load.
function load_color()
{
    local SYSLOAD=$(load)
    if [ ${SYSLOAD} -gt ${XLOAD} ]; then
        echo -en ${ALERT}
    elif [ ${SYSLOAD} -gt ${MLOAD} ]; then
        echo -en ${Red}
    elif [ ${SYSLOAD} -gt ${SLOAD} ]; then
        echo -en ${BRed}
    else
        echo -en ${Green}
    fi
}

test_fun () {
    echo "hi"
}

## alias arc="/cygdrive/c/src/arc c:/src/arc
## export PATH=$PATH:/cygdrive/c/src/arc
## Could not open input file: /cygdrive/c/src/arc/bin/../scripts/arcanist.php

source ~/git-prompt.sh

PROMPT_COMMAND='__posh_git_ps1 "\u@\h:\w " "\\\$ ";'$PROMPT_COMMAND

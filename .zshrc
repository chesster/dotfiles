# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="pygmalion"

export UPDATE_ZSH_DAYS=1
# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(adb brew cp debian django emacs git git-extras gitfast git-flow gitignore git-prompt git-remote-branch heroku jira note pip pep8 nvm npm pyenv pylint python rails rbenv rsync ruby rvm screen ssh-agent sudo ssublime taskwarrior tmux tmuxinator torrent vim-inteaction virtualenv virtualenvwrapper vundle zsh_reload)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

vd() { wget --no-check-certificate -c http://files.malik.pro/$1 }
avd() { aria2c -c http://files.malik.pro/$1 }
gt() { grep --color=always -n -Rs $2 $1 . }
gtf() { grep -Rl $2 $1 . }
h() { cat $HISTFILE | grep $1 }

forceumount(){
    if [[ -d $1 ]]; then
    	sudo kill -9 `lsof -t $1` 2> /dev/null;
		sudo umount $1;
	fi
}
    
loadsource(){
    if [[ -f $1 ]]; then
        source $1;
    fi
}

filealias(){
    if [[ -f $2_$HOST ]]; then
        alias -g $1="$2_$HOST";
    else
        alias -g $1="$2";
    fi
}

# aliasy globalne
alias -g ...="../.."
alias -g ALL="print -C 1 **/**"
alias -g DO="| xargs -n1 "
alias -g G="| egrep -i"
alias -g GI="| egrep -iv"
alias -g L="| less"
alias -g M="| more"
alias -g S="| sort"
alias -g NOCOLOR='|sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'

filealias Z  $HOME/.zshrc
filealias C  $HOME/.conkyrc
filealias F  $HOME/.freshrc

loadsource $HOME/.rvm/scripts/rvm
loadsource $HOME/.aliases;
loadsource $HOME/.profile
loadsource $HOME/.exports;

# aliasy rozszerzen:
alias -s pdf="evince"
alias -s {jpg,JPG,jpeg,JPEG,png,PNG,gif,GIF}="geeqie"
alias -s {mp3,ogg,wav,flac}="mplayer"
alias -s {mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}="mplayer -idx"
#alias -s {mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}="vlc"
alias -s {txt}="vim"

## Opcje
setopt always_to_end
setopt auto_resume # jak jakis proces jest w "bg" to przy ponownym wywlownaniu go "fg" zamiast tworzyc nowy
setopt autocd # cdkuj automatycznie
setopt complete_in_word
setopt extended_history
setopt extendedglob # kolorki i inne w uzupenianiu 
setopt hist_ignore_all_dups # ignoruj duplikaty
setopt hist_ignore_space # ignoruj puste historie
setopt inc_append_history # dodawaj logicznie historie
setopt listpacked # mala lista
setopt no_always_last_prompt # promptuj na dole
setopt nobeep # nie beepuj
setopt prompt_cr # printnij \r przed promptem
setopt share_history
setopt short_loops # pozawalaj na `for file in *.pdf; lp ${file}`
setopt prompt_subst

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

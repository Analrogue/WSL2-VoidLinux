# Created by newuser for 5.9
# oh-my-zsh를 설치하지 않은 경우 기본설정은 .zshrc에서

source ~/.aliasrc
source ~/.functionrc



### ZSH CONFIG ###
# history 'space','duplicate' prevention for zsh
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS


# delete key problem 
bindkey "^[[3~" delete-char 

# Fix HOME, END keys for zsh
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line


# run-help activation on zsh
# autoload -Uz run-help
##################



### PROMPT CONFIG ###
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

#zsh세부설정 (setopt, https://zsh.sourceforge.io/Doc/Release/Options.html)
setopt AUTO_CD # cd생략가능
setopt HIST_IGNORE_ALL_DUPS # history 중복제거
setopt PROMPT_SUBST # prompt='' 부분에 대한 사용자정의
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f %F{blue}>>%f '
#####################



### PATH ###
export PATH=$PATH:~/.local/bin/
export PATH="/usr/local/sbin/:/usr/local/bin/:/usr/sbin/:/usr/bin/:/sbin/:/bin/:$PATH"
export PATH="$HOME/.cargo/bin/:$HOME/.local/share/:$HOME/.local/bin/:$PATH"
export PATH="$HOME/.pkg/netselect/bin/:$PATH"
export MANPATH="/usr/local/share/man/:$MANPATH" # sudo man page path
############



### STARTUP ###
#pfetch
neofetch #$HOME/.config/neofetch/config.conf

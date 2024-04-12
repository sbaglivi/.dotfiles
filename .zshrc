# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/simone/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
# %n username
# %m computer name
# %~ cur dir
# %(!.%F{green}.%F{red})>  -> ! means true if privileged user -> %({bool}.resultiftrue.resultiffalse) -> in this case it colors > based on if admin privileges
# PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
# PS1='%F{blue}(5~|%-1~/.../%3~|%4~) %(?.%F{green}.%F{red})%#%f 
setopt PROMPT_SUBST
# %(5~|%-1~/…/%3~|%4~) if path > 5 | true (show first segm,..,last3 | false (show last 4 segments
hostname=$(</etc/hostname)
PS1='%F{green}'
[[ ${(%):-%m} != $hostname ]] && PS1+='%m@'
PS1+='%2~%f %(!.%F{red}.%F{green})>%f '
# keybinds
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line
bindkey "^K" kill-line
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
setopt SHARE_HISTORY
alias hg='history 1 | grep'
bindkey -M viins jj vi-cmd-mode

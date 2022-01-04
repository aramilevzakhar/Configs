# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
zstyle :compinstall filename '/home/sucy/.zshrc'
zstyle ':completion:*' menu select

# При совпадении первых букв слова вывести меню выбора
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Чтобы игнорировать повторяющиеся строки в истории, используйте следующее:
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
# Корректировка ввода
# setopt CORRECT_ALL
# просто наберите нужный каталог и окажитесь в нём
setopt autocd

# Позволяем разворачивать сокращенный ввод, к примеру cd /u/sh в /usr/share 
autoload -Uz compinit promptinit
compinit
promptinit

autoload -U pick-web-browser

alias -s {html,htm}=firefox-bin
alias -s {avi,mpeg,mpg,mov,m2v}=vlc
alias -s {ppt,pptx,odt,doc,docx,sxw,rtf}=libreoffice

autoload -U colors && colors
bindkey "^[[3~" delete-char
bindkey ';5D' backward-word # ctrl+left
bindkey ';5C' forward-word #ctrl+right

alias shutdown='sudo shutdown -P now'
alias reboot='sudo reboot'
alias ..='cd ..'
alias ls='ls --color=auto'
alias his='cat ~/.histfile'
alias atr='atril 2>/dev/null 1>/dev/null'
alias grep='grep --colour=auto'
alias brt='sudo ~/.scripts/xes'

export TERM=rxvt-unicode
export PROMPT='%F{4}%n%f%F{6}@%m%f %F{4}>%f%F{4}>>%f ' export RPROMPT='%F{6}%~%f'
export max_brt=`cat /sys/class/backlight/intel_backlight/max_brightness`
export STARDICT_DATA_DIR=$XDG_DATA_HOME
export GTK_IM_MODULE=ibus
export XMDIFIERS=@im=ibus
export QT_IM_MODULE=ibus





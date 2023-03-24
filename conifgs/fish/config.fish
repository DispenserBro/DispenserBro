# Global settings

# alias sudo 'sudo '
set -g VIRTUAL_ENV_DISABLE_PROMPT 1
#set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
set -Ux LS_COLORS 'di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
set fish_cursor_visual line
set -x GPG_TTY $(tty)

# My aliases

## Fish config edit

alias freload='source ~/.config/fish/config.fish'
alias fedit='nvim ~/.config/fish/config.fish'
alias envim='nvim ~/.config/nvim/init.vim'

## Working with dirs

alias tconfig='tree -a ~/.config'
alias win='cd /mnt/c/'

alias ls='ls --color=auto'
alias la='ls -Alh'
alias ll='ls -la'
alias l.='ls -d .*'

alias tree='tree -C'
# alias ~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

## Custom apps aliases

alias cls='clear'
alias edit='$EDITOR'

# alias python='python3.11'
alias py='python'
alias pip='py -m pip'

alias vi='nvim'
alias vim='nvim'

## Git aliases

alias ginit='git init'


# Functions

function mdcd -d "Create a directory and set CWD"
    command mkdir $argv
    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end


# Shell/theme settings
set fish_greeting


set -Ux EDITOR nvim


set -g theme_display_git_dirty_verbose yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_git_default_branch yes
set -g theme_display_cmd_duration yes
set -g theme_display_user yes
# set -g theme_hide_hostname no
set -g theme_show_exit_status yes

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# source $HOME/.config/fish/functions/sudo.fish
source $HOME/.config/fish/custom_themes/base16_custom.fish


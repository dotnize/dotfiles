# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# dnf shortcuts
alias c="sudo dnf clean all"
alias i="sudo dnf install"
alias u="sudo dnf upgrade"
alias cu="c && u"

# add colors to ls
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

export FZF_DEFAULT_COMMAND="rg --files --hidden --follow -g '!{.git,node_modules}'"
export BAT_THEME="gruvbox-dark"

alias f='fzf --preview "bat --style=numbers --color=always --line-range :500 {}"'
alias fv='nvim $(f)'
alias v=nvim

# manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval "$(starship init bash)"
export GPG_TTY=$(tty)
. "$HOME/.cargo/env"

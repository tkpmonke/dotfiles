#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# for i3style
export PATH="/home/turdle/.cargo/bin:$PATH"

export CC=/usr/bin/gcc
export LD=/usr/bin/gcc

# for gcc
export PREFIX="/usr/local/i386elfgcc"
export TARGET=i386-elf
export PATH="$PREFIX/bin:$PATH"
export PATH="$HOME/opt/cross/bin:$PATH"
export PATH="$HOME/Downloads/xwiimote-2:$PATH"
export PATH="$HOME/opt/resolve/bin:$PATH"

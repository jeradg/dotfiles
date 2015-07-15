################################################################################
# fasd
################################################################################

# start fasd
eval "$(fasd --init auto)"

# add some helpful aliases
alias v='f -e vim'      # quick open file with vim
alias vs='sf -e vim'    # open file from list with vim
alias vd='d -e vim'     # quick open directory with vim
alias vsd='sd -e vim'   # open directory from list with vim
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias m='f -e mplayer'  # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

_fasd_bash_hook_cmd_complete v m o

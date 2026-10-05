export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

alias bashrc="micro $HOME/.bashrc && source $HOME/.bashrc"
alias cdt="cd $HOME/Téléchargements"
alias dg="sudo nix-env -p /nix/var/nix/profiles/system --delete-generations +5"
alias ff="fastfetch"
alias fm="yazi"
alias ls="eza --icons -1 --group-directories-first"
alias rm="trash -v"
alias nrs="sudo nixos-rebuild switch"
alias upgrade="sudo nixos-rebuild switch --upgrade"

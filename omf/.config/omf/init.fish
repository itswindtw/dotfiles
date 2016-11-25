# Use NeoVim
alias vim nvim

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

# Gcloud
fenv source $HOME/Applications/google-cloud-sdk/path.bash.inc
fenv source $HOME/Applications/google-cloud-sdk/completion.bash.inc

# Postgres.app
set -x PATH /Applications/Postgres.app/Contents/Versions/9.6/bin $PATH

# Yarn
set -x PATH $HOME/.yarn-config/global/node_modules/.bin $PATH

# Golang
set -x -g GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# OCaml
source /Users/itswindtw/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

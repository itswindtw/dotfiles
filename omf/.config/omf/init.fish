# Use NeoVim
alias vim nvim

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

# Gcloud
fenv source $HOME/Applications/google-cloud-sdk/path.bash.inc
fenv source $HOME/Applications/google-cloud-sdk/completion.bash.inc

# Yarn
# set -x PATH $HOME/.config/yarn/global/node_modules/.bin $PATH
 
# Haskell Stack
set -x PATH $HOME/.local/bin $PATH
 
# OCaml
# source /Users/itswindtw/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
# eval (opam config env)
# 
# Julia 
# set -x PATH /Applications/Julia-0.6.app/Contents/Resources/julia/bin/ $PATH

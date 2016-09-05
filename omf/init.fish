set fish_greeting

# Use NeoVim
alias vim nvim

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/base16-default.dark.sh
end

set -x PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
# set -x RUBY_CONFIGURE_OPTS "--with-readline-dir="(brew --prefix readline)""

# The next line updates PATH for the Google Cloud SDK.
fenv source $HOME/Utilities/google-cloud-sdk/path.bash.inc

# The next line enables shell command completion for gcloud.
fenv source $HOME/Utilities/google-cloud-sdk/completion.bash.inc

# OCaml
eval (opam config env --shell fish)
# source /Users/itswindtw/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Haskell
set -x PATH $HOME/.local/bin $PATH

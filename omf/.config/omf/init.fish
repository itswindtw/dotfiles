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
set -x PATH $HOME/.yarn/bin $PATH

# History
setopt histignorealldups sharehistory histignorespace

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

if command -v hstr > /dev/null; then
  alias hh=hstr
  export HSTR_CONFIG=hicolor
  bindkey -s "\C-r" "\C-a hstr -- \C-j"
fi

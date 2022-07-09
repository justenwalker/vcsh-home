if [[ -d "$HOME/.rvm/bin" ]]; then
    # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
    pathmunge "${HOME}/.rvm/bin"
fi

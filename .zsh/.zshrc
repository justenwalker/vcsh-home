if [ -r $HOME/.zshrc ]; then
    source $HOME/.zshrc
fi

if [ -r $ZDOTDIR/zshrc ]; then
    source $ZDOTIDR/zshrc
fi

if [ -d $ZDOTDIR/zshrc.d ]; then
  for Z in $ZDOTDIR/zshrc.d/*.zsh(N); do
    source $Z
  done
fi

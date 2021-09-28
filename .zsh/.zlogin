if [ -r $HOME/.zlogin ]; then
    source $HOME/.zlogin
fi

if [ -r $ZDOTDIR/zlogin ]; then
    source $ZDOTIDR/zlogin
fi

if [ -d $ZDOTDIR/zlogin.d ]; then
  for Z in $ZDOTDIR/zlogin.d/*.zsh(N); do
    source $Z
  done
fi

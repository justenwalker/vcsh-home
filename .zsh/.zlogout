if [ -r $HOME/.zlogout ]; then
    source $HOME/.zlogout
fi

if [ -r $ZDOTDIR/zlogout ]; then
    source $ZDOTIDR/zlogout
fi

if [ -d $ZDOTDIR/zlogout.d ]; then
  for Z in $ZDOTDIR/zlogout.d/*.zsh(N); do
    source $Z
  done
fi

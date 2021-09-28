if [ -r $HOME/.zprofile ]; then
    source $HOME/.zprofile
fi

if [ -r $ZDOTDIR/zprofile ]; then
    source $ZDOTIDR/zprofile
fi

if [ -d $ZDOTDIR/zprofile.d ]; then
  for Z in $ZDOTDIR/zprofile.d/*.zsh(N); do
    source $Z
  done
fi

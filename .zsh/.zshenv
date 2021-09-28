pathmunge () {
    if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
        if [ "$2" = "after" ] ; then
            PATH=$PATH:$1
        else
            PATH=$1:$PATH
        fi
    fi
}

if [ -r $ZDOTDIR/zshenv ]; then
    source $ZDOTDIR/zshenv
fi

if [ -d $ZDOTDIR/zshenv.d ]; then
  for Z in $ZDOTDIR/zshenv.d/*.zsh(N); do
    source $Z
  done
fi
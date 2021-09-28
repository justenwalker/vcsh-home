if [ -r $HOME/.zinit/bin/zinit.zsh ]; then
    source $HOME/.zinit/bin/zinit.zsh
    autoload -Uz _zinit
    (( ${+_comps} )) && _comps[zinit]=_zinit

    # Load a few important annexes, without Turbo
    # (this is currently required for annexes)
    zinit light-mode for \
        zinit-zsh/z-a-rust \
        zinit-zsh/z-a-as-monitor \
        zinit-zsh/z-a-patch-dl \
        zinit-zsh/z-a-bin-gem-node

    ### End of Zinit's installer chunk
    if [ -r $ZDOTDIR/zinit ]; then
        source $ZDOTDIR/zinit
    fi
    if [ -d $ZDOTDIR/zinit.d ]; then
        for Z in $ZDOTDIR/zinit.d/*.zsh(N); do
            source $Z
        done
    fi
fi
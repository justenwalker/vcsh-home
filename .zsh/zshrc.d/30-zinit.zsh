ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ -d ${ZINIT_HOME} ]; then
    source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
    autoload -Uz _zinit
    (( ${+_comps} )) && _comps[zinit]=_zinit

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

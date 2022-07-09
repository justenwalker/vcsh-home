eval "$(direnv hook zsh)"

direnv_prune() {
    for entry in ~/.local/share/direnv/allow/*; do
        local file=$(cat $entry)
        if [ ! -f $file ]; then
            rm $entry
        else
            local hash=$( (echo $file && cat $file) | shasum -a 256 | awk '{print $1 }')
            local that=$(basename $entry)
            if [ ! "${hash}" = "${that}" ]; then
                rm $entry
            fi
        fi
    done
}
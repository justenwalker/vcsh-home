GPG_TTY=$(tty)
export GPG_TTY

# Launch GPG Agent
gpgconf --launch gpg-agent

# Enable SSH support via GPG
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

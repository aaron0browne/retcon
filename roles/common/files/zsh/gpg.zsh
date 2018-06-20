gpg-connect-agent /bye &> /dev/null
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

# Load themes from ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.zsh.prompts $fpath)
promptinit

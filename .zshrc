
# Load Homebrew config script
source $HOME/.brewconfig.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# VAL SET
export ZSH=~/.oh-my-zsh

# ZPLUG LOAD
source ~/.zplug/init.zsh

# Plugins
zplug "plugins/git",   from:oh-my-zsh
zplug 'lib/key-bindings', from:oh-my-zsh
zplug "lib/directories",  from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh

# theme
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme

# install & load
zplug check || zplug install
zplug load

# export TERM=xterm-256color
export TERM=screen-256color


alias norm='norminette -R CheckForbiddenSourceHeader'
alias cc='gcc -Wall -Wextra -Werror'

export MAIL=sanhan@student.42seoul.kr

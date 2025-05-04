# Enable history and command completion
autoload -Uz compinit
compinit

# Enable color support
autoload -Uz colors
colors

# Customize the prompt (PS1) lightly
# (Example: display the current directory in color)
PROMPT='%F{cyan}%~%f %# '

# Add color to aliases (example: ls)
alias ls='ls --color=auto'


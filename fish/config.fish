# ~/.config/fish/config.fish

# $PATH managment
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/qt/bin
fish_add_path ~/.local/bin

# pretty terminal prompt
starship init fish | source

# workspace helpers
direnv hook fish | source

# autocompletion helpers
flux completion fish | source
helm completion fish | source
# kubectl via evanlucas/fish-kubectl-completions
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

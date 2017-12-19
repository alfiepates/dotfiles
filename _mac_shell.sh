#!/usr/bin/env bork

ok brew
ok brew zsh

ok brew zsh-autosuggestions
ok brew zsh-syntax-highlighting
ok brew zsh-history-substring-search

ok brew liquidprompt

include _git-dotfiles.sh

ok directory "$HOME/.config/zsh/"
ok symlink $HOME/.config/zsh/.zshrc $HOME/src/dotfiles/configs/zsh/rc
ok symlink $HOME/.config/zsh/.zshenv $HOME/src/dotfiles/configs/zsh/env
ok symlink $HOME/.config/liquidpromptrc $HOME/src/dotfiles/configs/liquidpromptrc
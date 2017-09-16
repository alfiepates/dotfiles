#!/usr/bin/env bork

ok brew
ok brew-tap alfiepates/formulae
ok brew alfiepates/formulae/kakoune

ok github $HOME/src/dotfiles alfiepates/dotfiles --ssh
ok directory "$HOME/.config/kak/"
ok symlink $HOME/.config/kak/kakrc $HOME/src/dotfiles/configs/kakoune 

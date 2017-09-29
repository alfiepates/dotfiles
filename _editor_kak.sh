#!/usr/bin/env bork

ok brew
ok brew-tap alfiepates/formulae
ok brew alfiepates/formulae/kakoune

include _git-dotfiles.sh

ok directory "$HOME/.config/kak/"
ok symlink $HOME/.config/kak/kakrc $HOME/src/dotfiles/configs/kakoune 

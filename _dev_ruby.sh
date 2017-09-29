#!/usr/bin/env bork

ok brew
ok brew ruby-install
ok brew chruby

ruby-install -L --no-reinstall ruby

include _git-dotfiles.sh

ok symlink $HOME/.railsrc $HOME/src/dotfiles/configs/railsrc

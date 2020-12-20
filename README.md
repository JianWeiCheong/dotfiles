# My dotfiles

## Guide

### Bare git repository

Clone to bare git repository, and alias `config`.
```bash
git clone --bare <git-repo-url> $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

`config` replaced `git` commands.
```bash
config status
config add .config/nvim/
config commit -m "Add nvim configs"
config push
```

If home directory isn't empty.
```bash
git clone --separate-git-dir=$HOME/.dotfiles <git-repo-url> $HOME/.dotfiles-tmp
cp ~/.dotfiles-tmp ~
rm -r ~/.dotfiles-tmp
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

## Configs

### Programs

+ zsh
+ bspwm
+ mpv
+ nvim
+ polybar
+ ranger
+ sxhkd
+ termite
+ zathura

### .local/bin

+ Scripts from LukeSmith

### Extras

+ .profile, .xprofile, .zprofile
+ .xinitrc

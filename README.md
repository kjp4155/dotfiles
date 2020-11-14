# Vim Setting Guide

[Plugin Manager](https://github.com/junegunn/vim-plug)

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Tmux Setting Guide

[tpm](https://github.com/tmux-plugins/tpm)

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

[nord theme](https://github.com/arcticicestudio/nord-alacritty)

## Tmux Truecolor setting on Mac iTerm2
```
.tmux.conf:
set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",*256col*:Tc"
.zshrc:
export TERM="xterm-256color"
```

## Tmux Color setting on Linux

```
.tmux.conf:
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",*256col*:Tc"
.bashrc:
alias tmux="TERM=screen-256color-bce tmux"
```

# Bash-it

[bash-it](https://github.com/Bash-it/bash-it)

Use `powerline-multiline` theme.

# VSCode Setting Guide

# Capslock to CTRL Windows 10
Run Powershell
```
$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);
```

# Truecolor Check

```
#!/bin/bash
# Based on: https://gist.github.com/XVilka/8346728

awk -v term_cols="${width:-$(tput cols || echo 80)}" 'BEGIN{
    s="/\\";
    for (colnum = 0; colnum<term_cols; colnum++) {
        r = 255-(colnum*255/term_cols);
        g = (colnum*510/term_cols);
        b = (colnum*255/term_cols);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum%2+1,1);
    }
    printf "\n";
}'
```

# Bash Setting Guide


# Fuzzy finder

https://github.com/junegunn/fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

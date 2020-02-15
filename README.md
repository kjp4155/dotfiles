# Vim Setting Guide

[Plugin Manager](https://github.com/junegunn/vim-plug)


# Tmux Setting Guide

[tpm](https://github.com/tmux-plugins/tpm)

[nord theme](https://github.com/arcticicestudio/nord-alacritty)

# VSCode Setting Guide

# Sublime Text Setting Guide

# Capslock to CTRL Windows 10
Run Powershell
```
$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);
```

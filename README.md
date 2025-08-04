# sway-config :penguin::computer:
Configuration files of the sway window manager. 

Overview of the files in this repository:
- the sway config itself
- a script for the status bar
- a script to fetch the CPU temperature to show in the status bar
- a script to fetch the RAM Usage to show in the status bar
- config files some other tools
  - vim
  - ranger

## sway bar
The following files go into `~/.config/sway/`:
- `config`
- `status.sh`
- `cpu_temp.sh`
- `ram_usage_sh`

You need to install a suitable font to make sure that the icons in the sway bar are displayed correctly:
```bash
sudo apt install fonts-font-awesome
```

## vim
Vim is searching for `.vimrc` in your home directory. Therefore the easiest way is to put it there: `~/.vimrc`. In case you perfer it where most other config files go (`~/.config/...`) you have several options. The simplest is to put `.vimrc` directly into your home directory and create a symbolic link inside `~/.config/...' unsing:

```bash
ln -s ~/.config/vim/vimrc ~/.vimrc
```

## ranger
Copy the config file before you customise ist:
```bash
ranger --copy-config=rifle
```
Where does the command put the file?

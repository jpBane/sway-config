# sway-config :penguin::computer:
Configuration files of the sway window manager. 

Overview of the files in this repository:
- the sway config itself
- a script for the status bar
- a script to fetch the CPU temperature to show in the status bar
- a script to fetch the RAM Usage to show in the status bar
- config files of some other tools
  - wofi launcher
  - vim editor
  - ranger file manager
  - cmus music player
  - foot terminal

## bar
### sway bar
The following files go into `~/.config/sway/`:
- `sway/config`
- `sway/status.sh`
- `sway/cpu_temp.sh`
- `sway/ram_usage_sh`
- `sway/cmus-info.sh`

Do not forget to make the scripts excecutable by using `chmod +x`. 

You need to install a suitable font to make sure that the icons in the sway bar are displayed correctly:
```bash
sudo apt install fonts-font-awesome
```
### waybar
...

## wofi launcher

If you prefer a more visually appealing alternative to the lightweight `dmenu`: 

```
sudo apt install wofi
```

The following files go into `~/.config/wofi/`:
- `wofi/config`
- `wofi/style.css`

Then apply the following changes to the sway config in order to use the wofi launcher by typing `$mod+d`:
```
# Replace this line
set $menu dmenu_path | dmenu | xargs swaymsg exec --

# with this line
set $menu wofi --show
```
You can define if wofi uses run or drun by changing the parameter `mode=...` in the `config` 


## vim editor
Vim is searching for `.vimrc` in your home directory. Therefore the easiest way is to put it there: `~/.vimrc`. In case you perfer it where most other config files go (`~/.config/...`) you have several options. The simplest is to put `.vimrc` into `~/.vimrc/vim/` and create a symbolic link to `vimrc` inside your home folder using:

```bash
ln -s ~/.config/vim/vimrc ~/.vimrc
```

## ranger
Copy the config file before you customise it:
```bash
ranger --copy-config=rifle
```
This copies the `rifle.conf`into `~/.config/ranger/`. Then modify the label editor in this file to make vim the standard text editor. 
```
# Change the original line to this one
mime ^text, label editor = vim -- "$@" 
```

## cmus music player

Copy all themes into `~/.config/cmus` and activate them by typing the following command inside cmus: `:colorscheme <name_of_theme>`. 

In order to activate the automatic switch of the audio output, e.g. when you connect headphones, you need to edit the `pipewire-pulse.conf`. Copy the config file before you customise it for you current user:
```bash
mkdir ~/.config/pipewire
cp /usr/share/pipewire/pipewire-pulse.conf ~/.config/pipewire/
```
Then uncomment the line `{ cmd = "load-module" args = "module-switch-on-connect" }`. 

## foot terminal

Create a subdirectory for the config file
```bash
mkdir ~/.config/foot
```
Then copy the `foot.ini` from this repository into the new folder. The original config file is located in `/etc/xdg/foot/foot.ini`. 

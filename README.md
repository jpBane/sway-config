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
  - cmus
  - foot

## sway bar
The following files go into `~/.config/sway/`:
- `config`
- `status.sh`
- `cpu_temp.sh`
- `ram_usage_sh`
- `cmus-info.sh`

Do not forget to make the scripts excecutable by using `chmod +x`. 

You need to install a suitable font to make sure that the icons in the sway bar are displayed correctly:
```bash
sudo apt install fonts-font-awesome
```

## vim
Vim is searching for `.vimrc` in your home directory. Therefore the easiest way is to put it there: `~/.vimrc`. In case you perfer it where most other config files go (`~/.config/...`) you have several options. The simplest is to put `.vimrc` into `~/.vimrc/vim/` and create a symbolic link to `vimrc` inside your home folder using:

```bash
ln -s ~/.config/vim/vimrc ~/.vimrc
```

## ranger
Copy the config file before you customise it:
```bash
ranger --copy-config=rifle
```
This copies the `rifle.conf`into `~/.config/ranger/`. 

## cmus

Copy all themes into `~/.config/cmus` and activate them by typing the following command inside cmus: `:colorscheme <name_of_theme>`. 

In order to activate the automatic switch of the audio output, e.g. when you connect headphones, you need to edit the `pipewire-pulse.conf`. Copy the config file before you customise it for you current user:
```bash
mkdir ~/.config/pipewire
cp /usr/share/pipewire/pipewire-pulse.conf ~/.config/pipewire/
```
Then uncomment the line `{ cmd = "load-module" args = "module-switch-on-connect" }`. 

## foot

Create a subdirectory for the config file
```bash
mkdir ~/.config/foot
```
Then copy the `foot.ini` from this repository into the new folder. The original config file is located in `/etc/xdg/foot/foot.ini`. 

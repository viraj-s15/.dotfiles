# dotfiles

<font size =4>

## About <a name = "about"></a>

Finally created a symlinked version of the dotfiles.
Contains all the config files for important application on Arch Linux.

## Getting Started <a name = "getting_started"></a>

You will mainly need to Arch Linux along with Kde and easyeffects for the config files to work as is. If not, you may haver to change
a few things around.

**NOTE: DO NOT TOUCH ANYTHING IN THE NVIM DIRECTORY OUTSIDE THE USER DIRECTORY**

For NeoVim I have used AstroNvim which is where the folder leads to, it doesnt let me copy over the font and some plugins for some reasons.
For example, a plugin such has Telescope works perfectly fine however Overseer is not being copied over. I will try to address this issue
in the future

### Installing

All the files are symlinked copies of the actual config files.
If the configuration of your system matches mine you can simply clone the repo and copy the files over to your home directory.
For bash you will not face any issues however, for zsh the given config file will not work.

```
git clone https://github.com/viraj-s15/.dotfiles.git
```

After the repo has been cloned you can copy the files with
whatever way you prefer.

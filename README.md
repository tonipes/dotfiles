## My Dotfiles

These are my dotfiles. These are used with Arch Linux distribution, but there should not be any reason why they wouldn't work on any other distro/os. 

To manage dotfiles I use [dotfile manager by jbernard](https://github.com/jbernard/dotfiles)

Note that using these dotfiles require zsh.

### Usage

- `~/.bin` folder is added to $PATH.

- `~/.gitconfig-personal.local` - Git configuratiom for personal projects

- `~/.gitconfig-work.local` - Git configuratiom for work projects
    
    - This file is used when under path `~/Development/work`. See `gitconfig`

- `~\.aliases`, `~\.functions` and `~\.env.local` are loaded in `zshrc`
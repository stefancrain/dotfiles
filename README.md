# Stefan's Dotfiles

## Setting up

_Warning:_ If you want to give these dotfiles a try, you should first fork this
repository, review the code, and remove things you don't want or need. Don't
blindly use my settings unless you know what that entails. Use at your own risk!

```bash
mkdir -p ~/Code/
chezmoi init --source ~/Code/.dotfiles git@github.com:stefancrain/dotfiles.git
chezmoi apply
```

## Requirements

- [fish-shell](https://github.com/fish-shell/fish-shell) version 3.2+
- [fzf](https://github.com/junegunn/fzf) version 0.25.1+
- [fd-find](https://github.com/sharkdp/fd) version 8.1.1+
- [bat-cat](https://github.com/sharkdp/bat) version 0.18.0+
- [starship](https://starship.rs/) version 0.50.0+
- [dotbot](https://pypi.org/project/dotbot/) version 1.18.0+

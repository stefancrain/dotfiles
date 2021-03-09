# Stefan's Dotfiles

## Setting up

_Warning:_ If you want to give these dotfiles a try, you should first fork this
repository, review the code, and remove things you don't want or need. Don't
blindly use my settings unless you know what that entails. Use at your own risk!

```bash
# some basic programs that help me get work done
sudo apt-get install bat fd-find fish curl wget python3 python3-pip python3-dev htop aria2
# dotbot does our install
pip install dotbot==1.18.0
# fzf tool for reverse terminal history search
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --key-bindings --completion --update-rc
# bat for #TODO:
curl -sL -o bat_0.18.0_amd64.deb https://github.com/sharkdp/bat/releases/download/v0.18.0/bat_0.18.0_amd64.deb
sudo dpkg -i bat_0.18.0_amd64.deb

curl -fsSL https://starship.rs/install.sh | bash
# fish for best shell experience
chsh -s /usr/bin/fish ${WHOAMI}
```

```bash
git clone https://github.com/stefancrain/dotfiles
cd dotfiles
dotbot -c install.yaml
```

## Requirements

- [fish-shell](https://github.com/fish-shell/fish-shell) version 3.2+
- [fzf](https://github.com/junegunn/fzf) version 0.25.1+
- [fd-find](https://github.com/sharkdp/fd) version 8.1.1+
- [bat-cat](https://github.com/sharkdp/bat) version 0.18.0+
- [fish-shell](https://github.com/fish-shell/fish-shell) version 3.2+

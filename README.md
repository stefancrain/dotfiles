# Stefan's Dotfiles

## Setting up

_Warning:_ If you want to give these dotfiles a try, you should first fork this
repository, review the code, and remove things you don't want or need. Don't
blindly use my settings unless you know what that entails. Use at your own risk!

### chezmoi

- [install chezmoi](https://www.chezmoi.io/docs/install/)
- [install deps](./README.MD#Requirements)
- Run first time setup:

```bash
  mkdir -p ~/Code/
  chezmoi init --source ~/Code/.dotfiles git@github.com:stefancrain/dotfiles.git
  chezmoi apply
```

## Requirements

### shell

- [fish-shell](https://github.com/fish-shell/fish-shell) version 3.2+
- [starship](https://starship.rs/) version 0.50.0+
- [fzf](https://github.com/junegunn/fzf) version 0.25.1+
- [fd-find](https://github.com/sharkdp/fd) version 8.1.1+
- [bat-cat](https://github.com/sharkdp/bat) version 0.18.0+

### AWS 

- [cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) version 2.0.0+

### K8S

- [kubectl](https://kubernetes.io/docs/tasks/tools/) version 1.21.0+
- [kubie](https://github.com/sbstp/kubie) version 0.15.1+
- [kubecolor](https://github.com/dty1er/kubecolor) version 0.0.20+
- [helm](https://helm.sh/docs/intro/install/) version 3.0.0+
- [flux2](https://github.com/fluxcd/flux2) version 0.16.0+
- [direnv](https://direnv.net/) version 2.28.0+

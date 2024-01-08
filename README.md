# dotfiles

## Update

```bash
sudo apt update && sudo apt install nala -y
```

## [Nala](https://gitlab.com/volian/nala)

```bash
sudo nala update && sudo nala upgrade -y
```

## [ZSH](https://www.zsh.org/)

```bash
sudo nala install zsh -y
```

## [Chezmoi](https://www.chezmoi.io/)

```zsh
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply https://github.com/songpola/dotfiles.git
```

### `~/.config/chezmoi/chezmoi.toml`

Automatically commit and push changes to your repo

```toml
[git]
autoCommit = true
autoPush = true
```

## [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Prompt: [Starship](https://starship.rs/)

```zsh
curl -sS https://starship.rs/install.sh | sh
```

### Plugins

```zsh
(
  # zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  # zsh-history-substring-search
  git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

  # zsh-completions
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

  # pnpm
  git clone --depth=1 https://github.com/ntnyq/omz-plugin-pnpm.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/pnpm

  # gradle-completion
  git clone https://github.com/gradle/gradle-completion ~/.oh-my-zsh/plugins/gradle-completion
)
```

## [SDKMAN!](https://sdkman.io/)

```zsh
sudo nala install zip unzip -y
```

```zsh
curl -s "https://get.sdkman.io" | bash
```

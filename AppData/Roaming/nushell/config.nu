# config.nu
#
# Installed by:
# version = "0.109.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

# Remove welcome message
$env.config.show_banner = false

# Use VS Code as default editor
# let vscode = which code | first | get path # no need to find full path
$env.config.buffer_editor = [ code --wait ]
# Below are used by:
# - chezmoi: `chezmoi edit`
$env.VISUAL = $env.config.buffer_editor | str join ' '
$env.EDITOR = $env.VISUAL

alias c = clear
alias ll = ls -la

alias cz = chezmoi
alias czg = chezmoi git
alias czst = chezmoi status
alias czcd = cd (chezmoi source-path)
alias czed = chezmoi edit -a -v $nu.config-path
alias czdf = chezmoi diff

alias edc = czed # edit config

alias wg = winget
alias wgf = winget find
alias wga = winget add -i

alias wslv = wsl -l -v
alias wsld = wsl -d
alias wslt = wsl -t
alias wsht = wsl --shutdown

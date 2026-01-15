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
let vscode = which code | first | get path
let vscode_wait = [ $vscode --wait ]
# Below are used by:
# - Nushell: `config nu`
$env.config.buffer_editor = $vscode_wait
# Below are used by:
# - chezmoi: `chezmoi edit`
# - Nushell: `config nu`
let vscode_wait = $vscode_wait | str join ' '
$env.VISUAL = $vscode_wait

alias c = clear
alias ll = ls -la

alias cz = chezmoi
alias czcd = cd (chezmoi source-path)
alias czed = chezmoi edit $nu.config-path
alias czdf = chezmoi diff
alias czap = chezmoi apply -v

alias wf = winget find
alias wa = winget add -i

alias wslv = wsl -l -v
alias wslt = wsl -t
alias wsld = wsl -d

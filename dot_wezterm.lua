local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Andromeda'

config.font = wezterm.font 'Monaspace Neon'

config.default_prog = { 'C:/Users/songpola/AppData/Local/Programs/nu/bin/nu.exe' }

return config

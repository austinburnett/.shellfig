local wezterm = require('wezterm');

local config = wezterm.config_builder();

--------------------------------------------------------------------------------
-- Configuration Goes Below Here
--------------------------------------------------------------------------------

config.font_size = 11;

-- Default to this shell.
-- config.default_domain = 'WSL:Ubuntu-24.04';

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 };

config.keys =
{
    -- Panes
    { mods = 'LEADER',  key = '-',  action = wezterm.action.SplitVertical   { domain = 'CurrentPaneDomain' }, },
    { mods = 'LEADER',  key = '\\', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },

    { mods = 'LEADER',    key = 'h', action = wezterm.action.ActivatePaneDirection 'Left', },
    { mods = 'LEADER',    key = 'l', action = wezterm.action.ActivatePaneDirection 'Right', },
    { mods = 'LEADER',    key = 'j', action = wezterm.action.ActivatePaneDirection 'Down', },
    { mods = 'LEADER',    key = 'k', action = wezterm.action.ActivatePaneDirection 'Up', },

    -- Tabs
    { mods = 'LEADER', key = 'o', action = wezterm.action.SpawnTab 'CurrentPaneDomain', },
    { mods = 'LEADER', key = 'c', action = wezterm.action.CloseCurrentTab { confirm = false }, },

    { mods = 'LEADER', key = 'p',  action = wezterm.action.ActivateTabRelative(-1) },
    { mods = 'LEADER', key = 'n',  action = wezterm.action.ActivateTabRelative(1) },

    -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
    { mods = 'LEADER', key = 'a', action = wezterm.action.SendKey { key = 'a', mods = 'ALT' }, },
};

-- Return the configuration to wezterm.
return config

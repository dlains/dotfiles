-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
    -- Your global configuration options
    vis:command("set theme tokyonight")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
    -- Your per window configuration options
    vis:command('set number on')
    vis:command('set relativenumbers on')
    vis:command('set cursorline on')
    vis:command('set tabwidth 4')
    vis:command('set autoindent on')
    vis:command('set showspaces off')
    vis:command('set showtabs off')
    vis:command('set expandtab on')
end)

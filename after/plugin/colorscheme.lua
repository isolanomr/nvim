-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-dragon")

-- Lua:
-- For dark theme (neovim's default)
--vim.o.background = 'dark'
-- For light theme
--vim.o.background = 'light'

-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    -- transparent = false,

    -- Enable italic comment
    -- italic_comments = true,

    -- Disable nvim-tree background color
    -- disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    -- color_overrides = {
    --    vscLineNumber = '#FFFFFF',
    --},

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    -- group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
    --    Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    --}
--})
--require('vscode').load()

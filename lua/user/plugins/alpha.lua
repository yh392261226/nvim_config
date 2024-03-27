local ok, alpha = pcall(require, "alpha")
if not ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    [[      ⣶⣦⣰⣦⣀⣴⢶⡤⠀⠀⣤⣤⣠⣤⣴⣦⣤⣦⣤⣠⣀⣀⣠⣠⣀⣤⣤⣤⣤⡆         ]],
    [[      ⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷         ]],
    [[      ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿         ]],
    [[      ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣴⣿⣿⣿⣆⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿         ]],
    [[      ⠻⠛⢿⣿⢿⠿⣿⣿⣿⡏⠀⣿⢿⡿⢿⠿⠗⠀⠀⠀⠈⠉⠿⠿⣿⣿⣿⣿⣿⣿         ]],
    [[      ⠀⠀⠀⠁⠀⠀⠉⠛⠙⠃⠀⣾⣾⣷⣿⣶⡾⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡉⢿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠉⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠹⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢶⣾⣃⣈⡀⠀         ]],
    [[      ⠀⠀⠀⠐⠲⠄⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⠀⠀⣀⠤⠀⠀⠀⠘⠓⠻⣶⣤         ]],
    [[      ⠀⠀⠀⠀⠀⠒⠁⠀⠀⠀⠙⠻⠿⣿⣿⣿⡿⠛⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉         ]],
    [[      ⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠰⠾⠶⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠐⡼⣿⡌⠉⠻⢌⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠰⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
    [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ]],
	[[                                    --Thank Cluas]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	-- dashboard.button("h", "󰈬  Help tags", ":Telescope help_tags <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
-- 原作者的footer
-- local function footer()
-- 	return "Clean Code"
-- end
-- dashboard.section.footer.val = footer()

-- 官方提供的footer
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

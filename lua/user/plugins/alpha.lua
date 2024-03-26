local ok, alpha = pcall(require, "alpha")
if not ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[ (\___/)   (\___/)   (\___/)   (\___/)   (\___/) ]],
    [[ /0\ /0\   /o\ /o\   /0\ /0\   /O\ /O\   /o\ /o\ ]],
    [[ \__V__/   \__V__/   \__V__/   \__V__/   \__V__/ ]],
    [[/|:. .:|\ /|;, ,;|\ /|:. .:|\ /|;, ,;|\ /|;, ,;|\]],
    [[\\:::::// \\;;;;;// \\:::::// \\;;;;;// \\;;;;;//]],
    [[-`"" ""`---`"" ""`---`"" ""`---`"" ""`---`"" ""`-]],
    [[^^^~^~^~^~~^^~^~~^~^~^~^^~~^^~^~~^~^~^~^^~~^^~^^^]],
	[[                                    --Thank Cluas]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- local function footer()
-- 	return "Clean Code"
-- end
-- dashboard.section.footer.val = footer()

local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

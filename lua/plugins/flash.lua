local function setupCustomHighlightGroup()
	vim.api.nvim_command("hi clear FlashMatch")
	vim.api.nvim_command("hi clear FlashCurrent")
	vim.api.nvim_command("hi clear FlashLabel")

	vim.api.nvim_command("hi FlashMatch guibg=NONE guifg=#ff0000") -- Emerald background
	vim.api.nvim_command("hi FlashCurrent guibg=#456268 guifg=#D0E8F2")
	vim.api.nvim_command("hi FlashLabel guibg=NONE guifg=#00bb2d")
end

return {
	"folke/flash.nvim",
	---@type Flash.Config
	opts = {
		rainbow = {
			enabled = true,
			shade = 5,
		},
		highlight = {
			backdrop = true,
			groups = {
				match = "FlashMatch",
				current = "FlashCurrent",
				label = "FlashLabel",
			},
		},
	},
  keys = {
    { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
    { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
    { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
    { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
  },

	config = function()
		setupCustomHighlightGroup()
	end,
}

-- https://github.com/LazyVim/LazyVim/discussions/1313

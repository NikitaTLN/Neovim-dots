
function SetColor()
	-- Option 1
	 --vim.o.background = "dark"
	 --vim.cmd([[colorscheme gruvbox]])
     --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- Option 2
	--
     --vim.cmd.colorscheme "catppuccin"
     vim.cmd.colorscheme "oxocarbon"
     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- Option 3
     --vim.cmd.colorscheme "oxocarbon"
end

SetColor()

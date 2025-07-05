vim.notify = function(msg, log_level)
  if log_level >= vim.log.levels.WARN then
    return
  end
  vim.api.nvim_out_write(msg .. "\n")
end

-- Basic Settings
vim.g.did_load_filetypes = 1

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.defer_fn(function()
            vim.cmd("silent! clear")
        end, 100)
    end,
})
vim.opt.guicursor = ""
vim.g.formatoptions = "qrn1"
vim.opt.showmode = true
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"            
vim.opt.swapfile = false              
vim.opt.encoding = "utf-8"            
vim.opt.cursorline = true             
vim.opt.fileformat = "unix"
vim.opt.shortmess:append("sI")

vim.opt.termguicolors = true

vim.opt.so = 30                       
vim.opt.ignorecase = true              
vim.opt.smartcase = true               
vim.opt.hlsearch = false               
vim.opt.incsearch = true               

-- Mouse
vim.opt.mouse = "a"                    
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true                  
vim.opt.relativenumber = true         
vim.wo.number = true                   
vim.wo.relativenumber = true         

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"      

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true               
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true             
vim.opt.cindent = true                 
vim.opt.smarttab = true                

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

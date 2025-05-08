-- Отключение уведомлений для health check
vim.notify = function(msg, log_level)
  -- Отключаем уведомления уровня "error" и "warn"
  if log_level >= vim.log.levels.WARN then
    return
  end
  -- Выводим только информационные сообщения
  vim.api.nvim_out_write(msg .. "\n")
end

-- Basic Settings
vim.g.did_load_filetypes = 1

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.defer_fn(function()
            vim.cmd("silent! clear")
        end, 100) -- Очистка сообщений через 100ms после запуска
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
vim.opt.shell = "/bin/fish"            -- Shell по умолчанию
vim.opt.swapfile = false               -- Отключить swap файлы nvim
vim.opt.encoding = "utf-8"             -- Кодировка utf-8
vim.opt.cursorline = true              -- Выделять активную строку где находится курсор
vim.opt.fileformat = "unix"
vim.opt.shortmess:append("sI")

-- Nvim-Tree
vim.opt.termguicolors = true

-- Scroll
vim.opt.so = 30                       -- При скролле курсор всегда по центру

-- Search
vim.opt.ignorecase = true              -- Игнорировать регистр при поиске
vim.opt.smartcase = true               -- Не игнорирует регистр если в паттерне есть большие буквы
vim.opt.hlsearch = false               -- Подсвечивает найденный паттерн
vim.opt.incsearch = true               -- Интерактивный поиск

-- Mouse
vim.opt.mouse = "a"                    -- Возможность использовать мышку
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true                  -- Показывает номера строк
vim.opt.relativenumber = true         -- Показывает расстояние к нужной строке относительно нашей позиции
vim.wo.number = true                   -- Показывает номера строк
vim.wo.relativenumber = true         -- Показывает расстояние к нужной строке относительно нашей позиции

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"      -- Разрешить общий буфер обмена

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true               -- Превратить все tab в пробелы
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true             -- Копировать отступ на новой строке
vim.opt.cindent = true                 -- Автоотступы
vim.opt.smarttab = true                -- Tab перед строкой вставит shiftwidht количество табов

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

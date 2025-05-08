return {
  {
    -- Псевдоплагин только для включения netrw и биндов
    name = "netrw-setup",
    init = function()
      -- Устанавливаем клавиши в netrw
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "netrw",
        callback = function()
          local opts = { buffer = true, noremap = true, silent = true }
          vim.keymap.set("n", "h", "-", opts)
          vim.keymap.set("n", "l", "<CR>", opts)
          vim.keymap.set("n", "q", ":q<CR>", opts)
        end,
      })
    end,
    lazy = false,
  },
}



require("which-key").setup({
  plugins = { spelling = { enabled = true } },
  window = {
    border = "rounded",
    position = "bottom",
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
  },
  ignore_missing = true, -- Отключает ошибки, если какого-то маппинга нет
})

local wk = require("which-key")
wk.register({
  ["<leader>c"] = { name = "Color Schemes" },
  ["<leader>cs"] = { "Open" },
  ["<leader>f"] = { name = "Find" },
  ["<leader>fb"] = { "Find Buffer" },
  ["<leader>ff"] = { "Find File" },
  ["<leader>fh"] = { "Find Help" },
  ["<leader>ft"] = { "Find Text" },
  ["<leader>t"] = { "Open NvimTree" },
  ["<leader>w"] = { "Close Buffer" },
  ["<leader>d"] = { "Next Buffer" },
  ["<leader>z"] = { "NvimTree Focus" },
  ["<leader>e"] = { "Open Diagnistical Window" },
  ["<leader>s"] = { "Save File" },
  ["<C-a>"] = { "Copy All Text" },
  ["<leader>q"] = { "Quit File" },
})


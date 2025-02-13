return {
  "akinsho/flutter-tools.nvim",
  enabled = true,
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  init = function()
    -- to use json formatter for arb filetype
    vim.filetype.add({
      extension = {
        arb = "json",
      },
    })
    -- require("telescope").load_extension("flutter")
  end,
  config = true,
  opts = {
    fvm = true,
    dev_log = {
      open_cmd = "20new",
    },
  },
}

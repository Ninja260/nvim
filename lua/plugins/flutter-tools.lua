return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  init = function()
    require("telescope").load_extension("flutter")
  end,
  config = true,
  opts = {
    fvm = true,
    dev_log = {
      open_cmd = "20new",
    },
  },
}

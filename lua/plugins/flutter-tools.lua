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
    vim.keymap.set("n", "<leader>al", "<cmd>FlutterLogToggle<cr>", { desc = "Flutter:Toggle Log" })
    vim.keymap.set("n", "<leader>ao", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter:Toggle Outline" })

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

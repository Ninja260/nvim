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
    vim.keymap.set("n", "<leader>ah", function()
      require("dapui").toggle()
    end, { desc = "Flutter:DapUI Toggle" })
    vim.keymap.set("n", "<leader>ar", "<cmd>FlutterLspRestart<cr>", { desc = "Flutter:Restart LSP" })

    -- require("telescope").load_extension("flutter")
  end,
  config = true,
  opts = {
    fvm = true,
    debugger = {
      enabled = true,
      -- don't catch any exceptions
      exception_breakpoints = {},
    },
    -- outline = {
    --   open_cmd = "30vnew", -- command to use to open the outline buffer
    --   auto_open = false, -- if true this will open the outline automatically when it is first populated
    -- },
    dev_log = {
      open_cmd = "20new",
      filter = function(line)
        return line ~= nil and not string.find(line, "GED_ERROR_FAIL")
      end,
    },
  },
}

require("flutter-tools").setup({
  -- debugger = {
  --   enabled = true,
  --   run_via_dap = true,
  -- },
  -- decorations = {
  --   statusline = {
  --     app_version = true,
  --     device = true,
  --     project_config = true,
  --   },
  -- },
})

require("telescope").load_extension("flutter")

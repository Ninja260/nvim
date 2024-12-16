-- If Neovim is running in VSCode mode, load additional key mappings specific to VSCode.
if vim.g.vscode then
  -- Import initial user settings (e.g., interface and behavior).
  require("user.settings")

  -- Import custom key mappings defined by the user.
  require("user.keymaps")

  require("config.lazy")
  require("editor.keymaps")
  require("editor.commands")
  require("editor.extensions")
else
  -- bootstrap lazy.nvim, Lazyvim and your plugins
  require("config.lazy")
end

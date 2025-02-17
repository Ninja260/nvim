require("editor.api")

-- GENERAL TWEAKS
-- Better 'O' in visual mode for VSCode
vim.keymap.set("x", "o", "ozz")

-- undo/redo via vscode
vim.keymap.set("n", "u", Undo)
vim.keymap.set("n", "<C-r>", Redo)

-- Leader
vim.keymap.set({ "n", "x" }, "<leader>f", QuickOpen)
vim.keymap.set({ "n", "x" }, "<leader>b", ShowOpenedEditors)
vim.keymap.set({ "n", "x" }, "<leader>s", GoToSymbol)
vim.keymap.set({ "n", "x" }, "<leader>S", ShowAllSymbols)
vim.keymap.set({ "n", "x" }, "<leader>d", OpenDiagnosticView)
vim.keymap.set({ "n", "x" }, "<leader>a", QuickFix)
vim.keymap.set({ "n", "x" }, "<leader>o", JumpToOutline)
vim.keymap.set({ "n", "x" }, "<leader>/", QuickSearch)
vim.keymap.set({ "n", "x" }, "<leader>k", ShowHover)
vim.keymap.set({ "n", "x" }, "<leader>r", RenameSymbol)
vim.keymap.set({ "n", "x" }, "<leader>?", OpenCommandPalette)

-- Goto
vim.keymap.set({ "n", "x" }, "gr", GoToReferences)
vim.keymap.set({ "n", "x" }, "ga", SwitchRecent)
vim.keymap.set({ "n", "x" }, "g.", GoToLastEditLocation)

-- Brackets
vim.keymap.set("n", "[g", GoPrevErrorInFiles, { noremap = true })
vim.keymap.set("n", "]g", GoNextErrorInFiles, { noremap = true })

-- Switch View
vim.keymap.set("n", "<leader>wh", SwitchToLeftView, { noremap = true, desc = "Switch To View Left" })
vim.keymap.set("n", "<leader>wl", SwitchToRightView, { noremap = true, desc = "Switch To View Right" })
vim.keymap.set("n", "<leader>wj", SwitchToBelowView, { noremap = true, desc = "Switch To View Below" })
vim.keymap.set("n", "<leader>wk", SwitchToAboveView, { noremap = true, desc = "Switch To View Above" })
vim.keymap.set("n", "<leader>ws", SplitToDownEditor, { noremap = true, desc = "Split To Editor Down" })
vim.keymap.set("n", "<leader>wv", SplitToRightEditor, { noremap = true, desc = "Split To Editor Right" })
vim.keymap.set("n", "<leader>wo", CloseOtherEditorsInGroup, { noremap = true, desc = "Close Other Editors" })

-- View
vim.keymap.set("n", "zg", OpenView)
vim.keymap.set("n", "<leader>kp", TogglePrimarySideBarVisibility, { noremap = true, desc = "Toggle Primary Sidebar" })
vim.keymap.set(
  "n",
  "<leader>ks",
  ToggleSecondarySideBarVisibility,
  { noremap = true, desc = "Toggle Secondary Sidebar" }
)
vim.keymap.set("n", "<leader>kb", TogglePanelVisitiblity, { noremap = true, desc = "Toggle Panel" })
vim.keymap.set("n", "<leader>kz", ToggleZenMode, { noremap = true, desc = "Toggle Zen Mode" })

-- Tmux Like behavior
vim.keymap.set("n", "<C-a>s", SwitchWindow)

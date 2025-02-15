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
vim.keymap.set("n", "<leader>wh", SwtichViewLeft, { noremap = true, description = "Switch View Left" })
vim.keymap.set("n", "<leader>wl", SwitchViewRight, { noremap = true, description = "Switch View Right" })
vim.keymap.set("n", "<leader>wj", SwitchViewBelow, { noremap = true, description = "Switch View Below" })
vim.keymap.set("n", "<leader>wk", SwitchViewAbove, { noremap = true, description = "Switch View Above" })
vim.keymap.set("n", "<leader>ws", SplitEditorDown, { noremap = true, description = "Split Editor Down" })
vim.keymap.set("n", "<leader>wv", SplitEditorRight, { noremap = true, description = "Split Editor Right" })

-- View
vim.keymap.set("n", "zg", OpenView)

-- Tmux Like behavior
vim.keymap.set("n", "<C-a>s", SwitchWindow)

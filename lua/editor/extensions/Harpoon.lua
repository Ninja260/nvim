local vscode = require("vscode")

-- VSCode Harpoon Extension API
function HarpoonAdd()
  vscode.call("cursor-harpoon.addEditor")
end

function HarpoonAddI(index)
  return function()
    vscode.call(string.format("cursor-harpoon.addEditor%d", index))
  end
end

function HarpoonList()
  vscode.call("cursor-harpoon.editorQuickPick")
end

function HarpoonEdit()
  vscode.call("cursor-harpoon.editEditors")
end

function HarpoonGoTo(index)
  return function()
    vscode.call(string.format("cursor-harpoon.gotoEditor%d", index))
  end
end

function HarpoonClear()
  vscode.call("cursor-harpoon.clearEditors")
end

-- Keymaps
vim.keymap.set({ "n", "x" }, "<leader>H", HarpoonAdd)
-- vim.keymap.set({ "n", "x" }, "<C-e>", HarpoonList)
vim.keymap.set({ "n", "x" }, "<leader>hh", HarpoonList)
vim.keymap.set({ "n", "x" }, "<leader>hc", HarpoonClear)
-- vim.keymap.set({ "n", "x" }, "<leader>h", HarpoonEdit)
vim.keymap.set({ "n", "x" }, "<leader>1", HarpoonGoTo(1))
vim.keymap.set({ "n", "x" }, "<leader>2", HarpoonGoTo(2))
vim.keymap.set({ "n", "x" }, "<leader>3", HarpoonGoTo(3))
vim.keymap.set({ "n", "x" }, "<leader>4", HarpoonGoTo(4))
vim.keymap.set({ "n", "x" }, "<leader>5", HarpoonGoTo(5))
vim.keymap.set({ "n", "x" }, "<leader>6", HarpoonGoTo(6))
vim.keymap.set({ "n", "x" }, "<leader>7", HarpoonGoTo(7))
vim.keymap.set({ "n", "x" }, "<leader>8", HarpoonGoTo(8))
vim.keymap.set({ "n", "x" }, "<leader>9", HarpoonGoTo(9))

vim.keymap.set({ "n", "x" }, "<leader>h1", HarpoonAddI(1))
vim.keymap.set({ "n", "x" }, "<leader>h2", HarpoonAddI(2))
vim.keymap.set({ "n", "x" }, "<leader>h3", HarpoonAddI(3))
vim.keymap.set({ "n", "x" }, "<leader>h4", HarpoonAddI(4))
vim.keymap.set({ "n", "x" }, "<leader>h5", HarpoonAddI(5))
vim.keymap.set({ "n", "x" }, "<leader>h6", HarpoonAddI(6))
vim.keymap.set({ "n", "x" }, "<leader>h7", HarpoonAddI(7))
vim.keymap.set({ "n", "x" }, "<leader>h8", HarpoonAddI(8))
vim.keymap.set({ "n", "x" }, "<leader>h9", HarpoonAddI(9))

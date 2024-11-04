return {
  "github/copilot.vim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Enable Copilot" })
    vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Disable Copilot" })
  end,
}

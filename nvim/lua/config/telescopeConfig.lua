-- Telescope Config
-------------------

-- Telescope Setup
require("telescope").setup({
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = "➤ ",
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Fzf
pcall(require("telescope").load_extension, "fzf")

-- Telescope Keymaps
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<C-p>", "<cmd>Telescope git_files<cr>", { desc = "Find files within git repo" })
vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })

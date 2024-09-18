-- Lazy loading for nvim-tree
return {
  'kyazdani42/nvim-tree.lua',
  lazy = true, -- make sure to load this lazily
  dependencies = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  config = function()
    require("nvim-tree").setup {
      -- Minimal configuration for a simple file explorer
      sort_by = "case_sensitive",
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false, -- Hide dotfiles by default
      },
    }

    -- Key mappings for nvim-tree
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle nvim-tree with <leader>e
  end
}

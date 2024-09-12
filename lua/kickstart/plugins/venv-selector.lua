return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      'mfussenegger/nvim-dap-python', --optional
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = true,
    branch = 'regexp', -- This is the regexp branch, use this for the new version
    config = function()
      require('venv-selector').setup({
        settings = {
          search = {
            find_code_venvs = {
              command = "fd /bin/python$ $CWD --full-path",
            },
          },
        },
      }
    )
    end,
    keys = {
      { '<leader>cv', '<cmd>VenvSelect<cr>' },
    },
  },
}

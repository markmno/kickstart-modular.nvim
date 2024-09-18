return {
  { -- You can easily change to a different colorscheme.
    'gbprod/nord.nvim',
    priority = 1002, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'nord'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

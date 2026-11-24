-- From dmmulroy/.dotfiles. Pinned to exact commits so lazy.nvim never moves them;
-- bump the commit by hand to update.
return {
  {
    'dmmulroy/tsc.nvim',
    commit = 'e083bcf1e54bc3af7df92b33235efb334e8c782c',
    lazy = true,
    ft = { 'typescript', 'typescriptreact' },
    config = function()
      require('tsc').setup {
        auto_open_qflist = true,
        pretty_errors = false,
        flags = {
          noEmit = true,
          pretty = 'false',
        },
      }
    end,
  },
  {
    'dmmulroy/ts-error-translator.nvim',
    commit = '558abff11b9e8f4cefc0de09df780c56841c7a4b',
    event = 'VeryLazy',
    config = function()
      require('ts-error-translator').setup()
    end,
  },
}

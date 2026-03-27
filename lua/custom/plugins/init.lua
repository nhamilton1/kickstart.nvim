-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-fugitive',
  config = function() end,

  {
    'ThePrimeagen/99',
    config = function()
      local _99 = require('99')
      local cwd = vim.uv.cwd()
      local basename = vim.fs.basename(cwd)

      _99.setup({
        logger = {
          level = _99.DEBUG,
          path = '/tmp/' .. basename .. '.99.debug',
          print_on_error = true,
        },
        md_files = {
          'AGENT.md',
        },
      })

      -- Fill in function body with AI
      vim.keymap.set('n', '<leader>9f', function()
        _99.fill_in_function()
      end, { desc = '[9]9 [F]ill in function' })

      -- Visual selection AI operation
      vim.keymap.set('v', '<leader>9v', function()
        _99.visual_selection()
      end, { desc = '[9]9 [V]isual selection' })

      -- Stop all AI requests
      vim.keymap.set('v', '<leader>9s', function()
        _99.stop_all_requests()
      end, { desc = '[9]9 [S]top all requests' })
    end,
  },

  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = function()
      local harpoon = require 'harpoon'

      return {
        {
          '<leader>a',
          function()
            harpoon:list():add()
          end,
          desc = 'Add to harpoon',
        },
        {
          '<C-e>',
          function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = 'Toggle harpoon menu',
        },
        {
          '<leader>1',
          function()
            harpoon:list():select(1)
          end,
          desc = 'Go to 1',
        },
        {
          '<leader>2',
          function()
            harpoon:list():select(2)
          end,
          desc = 'Go to 2',
        },
        {
          '<leader>3',
          function()
            harpoon:list():select(3)
          end,
          desc = 'Go to 3',
        },
        {
          '<leader>4',
          function()
            harpoon:list():select(4)
          end,
          desc = 'Go to 4',
        },
      }
    end,
  },
}

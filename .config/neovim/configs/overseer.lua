require('packer').startup(function()
    use {
      'stevearc/overseer.nvim',
      config = function() require('overseer').setup() end
    }
end)

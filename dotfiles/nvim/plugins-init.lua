local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
    { "VincentCordobes/vim-translate" },
    { "godlygeek/tabular" },
    { "taylorskalyo/markdown-journal" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-rhubarb" },
    { "tpope/vim-surround" },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

    require 'plugins.cmp',
    require 'plugins.ctrlsf',
    require 'plugins.indent-blankline',
    require 'plugins.lsp-config',
    require 'plugins.quick-scope',
    require 'plugins.telescope',
    require 'plugins.treesitter',
  },
  {
    lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json"
  }
)

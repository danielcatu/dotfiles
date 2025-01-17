require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "javascript",
    "html",
    "toml",
    "yaml",
    "dockerfile",
    "http",
    "json",
    "lua",
    "rust",
    "go",
    "python",
  },
  sync_install = false,
  highlight = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
})

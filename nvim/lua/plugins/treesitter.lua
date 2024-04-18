return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    require("lazy").setup({{
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { 
              "c",
              "lua",
              "vim", 
              "vimdoc",
              "query",
              "java",
              "vue",
              "elixir",
              "heex",
              "javascript",
              "typescript",
              "prisma",
              "scss",
              "json",
              "html"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
          })
      end
   }})
  end
}

-- Install lazy.nvim if it's not already installed
  -- Add conform.nvim to the list of plugins
return{
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        -- Automatically format on save
        format_on_save = true,
        -- Define formatters per filetype
        formatters = {
          typescript = { "prettier" },  -- Use Prettier for TypeScript
          -- Add more formats as needed (like `javascript`, `json`, etc.)
        },
        -- Set up default formatting settings (tabs, tab width)
        default = {
          -- Use tabs instead of spaces
          use_tabs = true,
          tab_width = 2,
        },
      })
    end
  },

  -- Optionally, use null-ls to integrate Prettier for more sources
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = {
          require("null-ls").builtins.formatting.prettier,
        },
      })
    end
  }
}


return {
  "ibhagwan/fzf-lua",
  lazy = false,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "FZF Files",
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "FZF Live Grep",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "FZF buffers",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").help_tags()
      end,
      desc = "FZF Help Tags",
    },
    {
      "<leader>fx",
      function()
        require("fzf-lua").diagnostics_document()
      end,
      desc = "FZF diagnostics document",
    },
    {
      "<leader>fX",
      function()
        require("fzf-lua").diagnostics_workspace()
      end,
      desc = "FZF diagnostics workspace",
    },
    {
      "<leader>fs",
      function()
        require("fzf-lua").lsp_document_symbols()
      end,
      desc = "FZF document symbols",
    },
    {
      "<leader>fS",
      function()
        require("fzf-lua").lsp_workspace_symbols()
      end,
      desc = "FZF workspace symbols",
    },
  }
}


return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable the default phpactor
        phpactor = {
          enabled = false,
        },
        -- Enable intelephense
        intelephense = {
          enabled = true,
        },
      },
    },
  },
}

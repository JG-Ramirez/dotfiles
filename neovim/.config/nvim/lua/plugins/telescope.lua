return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = vim.env.TELESCOPE_LAYOUT or "vertical", -- fallback to vertical if not set
      layout_config = {
        vertical = {
          width = 0.8,
          height = 0.9,
          preview_height = 0.5,
        },
        horizontal = {
          width = 0.8,
          height = 0.9,
          preview_width = 0.5,
        },
      },
    },
  },
}

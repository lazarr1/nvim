return {
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup({
        width_ratio = 0.9, -- 90% of the editor width
        height_ratio = 0.9, -- 90% of the editor height
        width = 200,        -- fallback to a large width if ratio is capped
        height = 60,        -- fallback to a large height if ratio is capped
      })
    end,
    cmd = "Glow",
  },
}

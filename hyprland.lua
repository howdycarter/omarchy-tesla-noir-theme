local active_border_color = {
  colors = { "rgba(f1e8d8ee)", "rgba(c88f4bee)" },
  angle = 45,
}
local inactive_border_color = "rgba(514b44aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 5,
    rounding_power = 3,
    shadow = {
      enabled = true,
      range = 5,
      render_power = 3,
      color = "rgba(c88f4b35)",
      color_inactive = "rgba(05050555)",
    },
  },
})

local active_border_color = {
  colors = { "rgba(f1e8d8ee)", "rgba(c88f4bee)" },
  angle = 45,
}
local inactive_border_color = "rgba(514b44aa)"

-- Cabin motion: Tesla vehicle UI uses a snappy decelerating ease, no bounce.
hl.curve("teslaEase", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({ leaf = "windows", enabled = true, speed = 4.4, bezier = "teslaEase" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.6, bezier = "teslaEase", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 5.2, bezier = "teslaEase" })

hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 14,
    border_size = 2,
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
    rounding = 6,
    rounding_power = 2,
    dim_inactive = true,
    dim_strength = 0.18,
    shadow = {
      enabled = true,
      range = 8,
      render_power = 3,
      color = "rgba(c88f4b40)",
      color_inactive = "rgba(05050555)",
    },
  },
})

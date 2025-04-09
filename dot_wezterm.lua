-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "BlulocoDark"
config.font = wezterm.font("Fira Code")

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
	options = {
		icons_enabled = true,
		theme = "BlulocoDark",
		tabs_enabled = true,
		theme_overrides = {},
		section_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
		component_separators = {
			left = wezterm.nerdfonts.pl_left_soft_divider,
			right = wezterm.nerdfonts.pl_right_soft_divider,
		},
		tab_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
	},
	sections = {
		tabline_a = { "mode" },
		tabline_b = { "workspace" },
		tabline_c = { " " },
		tab_active = {
			"index",
			{ "parent", padding = 0 },
			"/",
			{ "cwd", padding = { left = 0, right = 1 } },
			{ "zoomed", padding = 0 },
		},
		tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
		tabline_x = { "ram", "cpu" },
		tabline_y = { "datetime", "battery" },
		tabline_z = { "domain" },
	},
	extensions = {},
})

--local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
--bar.apply_to_config(config)

-- -- Root Loops
-- -- https://rootloops.sh/?sugar=8&colors=9&sogginess=2&flavor=2&fruit=5&milk=1
--
-- -- NOTE: make sure to *not* use any config.color_scheme option
-- --       if you want to define your own root loops color scheme
--
-- -- Root Loops color scheme
-- -- via https://rootloops.sh
-- config.colors = {
-- 	foreground = "#e6ede7",
-- 	background = "#1d251e",
-- 	cursor_bg = "#bbccbd",
-- 	cursor_border = "#f4f7f5",
-- 	cursor_fg = "#1d251e",
-- 	selection_bg = "#e6ede7",
-- 	selection_fg = "#1d251e",
-- 	ansi = {
-- 		"#313e33",
-- 		"#f98a79",
-- 		"#44cc6f",
-- 		"#d2a920",
-- 		"#91aafa",
-- 		"#ee7de6",
-- 		"#27c3d9",
-- 		"#bbccbd",
-- 	},
-- 	brights = {
-- 		"#5d7060",
-- 		"#fcad9f",
-- 		"#4de67d",
-- 		"#ebbe2f",
-- 		"#afc2fb",
-- 		"#f2a6eb",
-- 		"#42daf1",
-- 		"#f4f7f5",
-- 	},
-- }

-- and finally, return the configuration to wezterm
return config

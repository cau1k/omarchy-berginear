return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#080d06", -- Default background
				base01 = "#6d7e70", -- Lighter background (status bars)
				base02 = "#4d594f", -- Selection background
				base03 = "#6d7e70", -- Comments, invisibles
				base04 = "#cee7d2", -- Dark foreground
				base05 = "#b6dbbc", -- Default foreground
				base06 = "#b6dbbc", -- Light foreground
				base07 = "#cee7d2", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#7b0c24", -- Variables, errors, red
				base09 = "#f12d47", -- Integers, constants, orange
				base0A = "#7d672e", -- Classes, types, yellow
				base0B = "#298b43", -- Strings, green
				base0C = "#73d5c1", -- Support, regex, cyan
				base0D = "#1865e7", -- Functions, keywords, blue
				base0E = "#c677a0", -- Keywords, storage, magenta
				base0F = "#c89424", -- Deprecated, brown/yellow
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}

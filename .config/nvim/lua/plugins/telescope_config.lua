return {
	-- Override the Telescope plugin settings
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			pickers = {
				find_files = {
					hidden = true, -- Set to true to show hidden files
					no_ignore = false, -- Respect .gitignore but still show dotfiles
				},
			},
		},
	},
}

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		--		char = "┊",
		enabled = true,
		indent = {
			--highlight = { "LineNr" },
			highlight = highlight,
			char = "┊",
		},
		scope = { enabled = false },
	},
}

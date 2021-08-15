require("gitsigns").setup({
	signs = {
		add = { text = "▌", numhl = "GitSignsAddNr" },
		change = { text = "▌", numhl = "GitSignsChangeNr" },
		delete = { text = "_", numhl = "GitSignsDeleteNr" },
		topdelete = { text = "‾", numhl = "GitSignsDeleteNr" },
		changedelete = { text = "~", numhl = "GitSignsChangeNr" },
		--add = { hl = "DiffAdd", text = "▌", numhl = "GitSignsAddNr" },
		--change = { hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr" },
		--delete = { hl = "DiffDelete", text = "_", numhl = "GitSignsDeleteNr" },
		--topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
		--changedelete = { hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr" },
	},
})

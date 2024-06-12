return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				prompt_prefix = "🔎 ",
				selection_caret = "->",
				entry_prefix = "- ",
				file_ignore_patterns = { "%.o%", "^%build%/", "^%debug%/" },
				theme = "dropdown",
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						height = 0.999,
						width = 0.999,
						prompt_position = "top",
					},
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>o", builtin.find_files, {})
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
		vim.keymap.set("n", "<leader>go", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ss", builtin.spell_suggest, {})
		vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
		vim.keymap.set("n", "<leader>t", builtin.colorscheme, {})

		require("telescope").load_extension("file_browser")
		vim.keymap.set("n", "<leader>p", function()
			require("telescope").extensions.file_browser.file_browser()
		end)
	end,
}

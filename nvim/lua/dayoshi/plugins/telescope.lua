return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function ()
		require("telescope").setup()
		local builtin = require ("telescope.builtin")
		vim.keymap.set ("n", "<leader>o", builtin.find_files, {})
		vim.keymap.set ("n", "<leader>lg", builtin.live_grep, {})
		vim.keymap.set ("n", "<leader>b", builtin.buffers, {})
		vim.keymap.set ("n", "<leader>go", builtin.git_files, {})
		vim.keymap.set ("n", "<leader>ss", builtin.spell_suggest, {})
		vim.keymap.set ("n", "<leader>gs", builtin.git_status, {})
	end
}

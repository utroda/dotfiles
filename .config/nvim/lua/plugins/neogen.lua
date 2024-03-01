return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
    local neogen = require("neogen")

    neogen.setup({
      enabled = true,
    })

		vim.keymap.set("n", "<leader>nf", ":lua require('neogen').generate()<CR>", { noremap = true, silent = true })
	end,
	version = "*",
}

local wk = require('which-key')



wk.register({
    f = {
        name = "+Find",
        f = { "<cmd>lua require('telescope.builtin').find_files({hidden = true, file_ignore_patterns = { 'node_modules', 'prisma-client', '.next', '.git' }})<cr>", "Files" },
        g = { "<cmd>lua require('telescope.builtin').live_grep({file_ignore_patterns = { 'node_modules', 'prisma-client', '.next', '.git' }})<cr>", "Grep" },
        b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Buffers" },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help" },
        s = {"<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", "Document symbols"},
        d = {"<cmd>lua require('telescope.builtin').diagnostics()<cr>", "Diagnostics"},
    },
    b = {
        name = "NerdTree",
        t = { "<cmd>NvimTreeToggle<cr>", "Toggle" },
        b = { "<cmd>NvimTreeFocus<cr>", "Focus" },
        f = { "<cmd>NERDTreeFind<cr>", "Find" }
    },
    [";"] = {
        "<cmd>ToggleTerm<cr>", "Toggle"
    },
    k = {
        "<cmd>Lspsaga hover_doc<cr>", "Hover doc"
    },
    g = {
        name = "Go",
        {
            g = {
                "<cmd>LazyGit<cr>",
                "LazyGit"
            },
            r = {
                "<cmd>Lspsaga rename<cr>",
                "Rename"
            },
            h = {
                "<cmd>Lspsaga lsp_finder<cr>",
                "Lsp finder"
            },
            d = {
                "<cmd>Lspsaga show_line_diagnostics<cr>",
                "Preview definition"
            },
            a = {
                "<cmd>Lspsaga code_action<cr>",
                "Code action"
            },
            l = {
                "<cmd>Lspsaga show_line_diagnostics<cr>",
                "Code action"
            }

        }
    },
    r = {
	name = "r",
	{
		f = {
			"\\rf",
			"Connect console"
		},
		q =  {
			"\\rq",
			"Quit console"
		},
		o = {
			"\\ro",
			"Object browser"
		},
		r = {
			"\\d",
			"Execute line"
		},
		v = {
			"\\ss",
			"Execute  block"
		}
	}
    },
    -- map to slash
    ["/"] = {
        "<cmd>let @/=''<cr>",
        "Clear search"
    }

}, { prefix = "<leader>", noremap = false })


wk.register {
    ["<Tab>"] = {
        "<cmd>BufferLineCycleNext<cr>",
        "Next tab"
    },
    ["<C-s>"] = {
        "<cmd>w<cr>",
        "Save"
    },
    ["q"] = {
        "<C-v>",
        "Visual block"
    }
}
wk.register({
    ["C-s"] = {
        "<Esc><cmd>w<cr>",
        "Save"
    }
}, {
    mode = "i",
    norema  = true
})



wk.setup {
    plugins = {
        marks = false,
        registers = false
    },
    triggers = { "<leader>" }
}

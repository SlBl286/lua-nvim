local runtimePath = vim.fn.expand("$VIMRUNTIME/lua"):gsub("\\","/")
local configPath = vim.fn.stdpath("config") .. "/lua"
return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[runtimePath:gsub("\\","/")] = true,
                    [configPath:gsub("\\","/")] = true,

				},
			},
		},
	},
}

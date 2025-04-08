package = "pmd3.nvim"
version = "0.1.1-1"
source = {
	url = "https://codeberg.org/leso-kn/pmd3.nvim/archive/v0.1.1.zip",
	dir = "pmd3.nvim"
}
description = {
	summary = "A neovim plugin for the Paged Markdown 3 document-format for scientific writing",
	homepage = "https://codeberg.org/leso-kn/pmd3.nvim",
	license = "MIT"
}
dependencies = {
	"lua-websockets ~> v2",
	"mimetypes ~> 1",
	"paged-markdown-3 ~> 0.1",
	"sfs ~> 0.1"
}
build = {
	type = "builtin",
	modules = {
		["lua.nvim-pmd3"] = "lua/nvim-pmd3.lua",
		["plugin.pmd3"] = "plugin/pmd3.lua"
	}
}

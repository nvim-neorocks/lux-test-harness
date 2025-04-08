rockspec_format = "3.0"
package = "licensegen"
version = "v1.1.0-1"
source = {
	url = "git+https://github.com/botantony/licensegen.git",
	tag = "v1.1.0",
}
description = {
	summary = "Tool for generating license files",
	detailed = [[Small Lua-based utility that generates license file in your current directory.
It supports custom licenses, default config, and localization.]],
	homepage = "https://github.com/botantony/licensegen",
	license = "BSD-4-Clause",
	labels = { "cli", "licenses", "i18n" },
}
dependencies = {
	"lua >= 5.1",
	"datafile >= 0.9",
}
build = {
	type = "builtin",
	modules = {
		["licensegen.cfg"] = "cfg.lua",
		["licensegen.file_utils"] = "file_utils.lua",
		["licensegen.i18n"] = "i18n.lua",
		["licensegen.i18n._color"] = "i18n/_color.lua",
		["licensegen.i18n.en_US"] = "i18n/en_US.lua",
		["licensegen.i18n.en_US_notes"] = "i18n/en_US_notes.lua",
		["licensegen.licensegen"] = "licensegen.lua",
		["licensegen.table_utils"] = "table_utils.lua",
		["licensegen.text_utils"] = "text_utils.lua",
	},
	copy_directories = { "licenses" },
	install = {
		bin = {
			licensegen = "luarocks_bin.lua",
		},
	},
}

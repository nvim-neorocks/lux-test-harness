rockspec_format = "3.0"
package = "LuaPride"
version = "1.0.0-3"
source = {
	url = "git+https://codeberg.org/BenjaminV/LuaPride.git"
}
description = {
	summary = "A simple utility th show pride flags",
	detailed = "A simple utility to show pride flags",
	homepage = "",
	license = "CC-BY-SA-4.0"
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "command",
	copy_directories = {"./flags"},
	install_command = "cp ./bin/luapride /usr/bin/; cp ./luapride.desktop /usr/share/applications/",
	install = {
		lua = {
			["luapride"] = "luapride/init.lua",
			["luapride.flags"] = "luapride/flags.lua",
			["luapride.utils"] = "luapride/utils.lua",
			["luapride.ffi.raylib"] = "luapride/ffi/raylib.lua",
			["luapride.ffi.colors"] = "luapride/ffi/colors.lua",
		}
	}
}

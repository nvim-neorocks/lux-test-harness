package = "luakatsu"
version = "1.2-0"
source = {
	url = "git://github.com/Nymphium/luakatsu",
	tag = "v1.2-0"
}
description = {
	summary = "Aikatsu! --- Idol KATSUDOU, with Lua",
	detailed = [[
	Let's Aikatsu! with Lua!!
	]],
	homepage = "https://github.com/Nymphium/luakatsu",
	license = "MIT",
	maintainer = "Nymphium"
}
dependencies = {
	"lua ~> 5.2"
}
build = {
	type = "builtin",
	modules = {
		luakatsu = "luakatsu.lua",
		uakatsu = "uakatsu.lua",
		['luakatsu.bin.char_setmeta'] = "luakatsu/bin/char_setmeta.lua",
		['luakatsu.bin.merge_table'] = "luakatsu/bin/merge_table.lua",
		['luakatsu.lib.characters.idols'] = "luakatsu/lib/characters/idols.lua",
		['luakatsu.lib.characters.others'] = "luakatsu/lib/characters/others.lua",
	}
}


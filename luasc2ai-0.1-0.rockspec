rockspec_format="3.0"
package="luasc2ai"
version="0.1-0"
source = {
	url = "https://github.com/thebruhboozler/luaSC2ai/releases/download/v0.1/luasc2ai-0_1.tar.gz",
	tag="v0.1"
}

description = {
	summary = "a lua api for making starcraft 2 bots",
	detailed = [[
		a lua api for making starcraft 2 bots 
	]] ,
	homepage = "https://github.com/thebruhboozler/luaSC2ai",
	license="MIT"
}

dependencies = {
	"lua >= 5.1",
	"http >= 0.4",
	"lua-protobuf >=0.5",
}
--FIXME: find a way to add in .proto files
build = {
	type = "builtin",
	build_cmd="echo WOOOOOOOOOOOO",
	modules = {
		luaSC2ai = "src/sc2ai.lua",
		["src.actionHelper"]="src/actionHelper.lua",
		["src.connection"]="src/connection.lua",
		["src.debug"]="src/debug.lua",
		["src.ids.abilityId"]="src/ids/abilityId.lua",
		["src.ids.buffId"]="src/ids/buffId.lua",
		["src.ids.effectId"]="src/ids/effectId.lua",
		["src.ids.ids"]="src/ids/ids.lua",
		["src.ids.unitId"]="src/ids/unitId.lua",
		["src.ids.upgradeId"]="src/ids/upgradeId.lua"
	},

}


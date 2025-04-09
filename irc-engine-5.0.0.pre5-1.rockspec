local _version = "5.0.0-pre5"
local _rock_version = "5.0.0.pre5"
local _release = "1"

package = "irc-engine"
version = _rock_version .. "-" .. _release

source = {
	url = "https://github.com/mirrexagon/lua-irc-engine/archive/v" .. _version .. ".tar.gz",
	dir = "lua-irc-engine-" .. _version
}

description = {
	summary = "A Lua IRC module that tries to be minimal and extensible.",
	detailed = [[
		Lua IRC Engine is a callback-based, basic IRC "translator".
		It provides basic message parsing and a way to easily add new command
		sending and handling functions, but leaves most of the actual processing
		of command content to the host application.
	]],
	homepage = "http://github.com/mirrexagon/lua-irc-engine",
	license = "MIT/X11"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		-- Main module file.
		["irce"] = "src/init.lua",

		-- Standard modules.
		["irce.modules.base"] = "src/modules/base.lua",
		["irce.modules.message"] = "src/modules/message.lua",
		["irce.modules.channel"] = "src/modules/channel.lua",

		-- Utilities.
		["irce.util"] = "src/util.lua"
	}
}

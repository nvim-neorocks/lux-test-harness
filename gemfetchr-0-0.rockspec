package = "gemfetchr"
version = "0-0"
source = {
	url = "git+https://github.com/RixInGithub/gemfetchr.git"
}
description = {
	summary = "a barebones gemini client for lua, using only luasec (and partially luasocket, but that comes preinstalled with luasec lol)",
	license = "MIT",
	homepage = "https://github.com/RixInGithub/gemfetchr"
}
dependencies = {
	"lua >= 5.3, < 5.5",
	"luasec"
}
build = {
	type = "builtin",
	modules = {
		gemfetchr = "gemfetchr.lua"
	}
}
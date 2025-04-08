package = "inifile"
version = "1.1-1"

source = {
	url = "git://github.com/bartbes/inifile.git",
	dir = "inifile",
	tag = "v1.1",
}

description = {
	summary = "Inifile is a simple, complete ini parser for lua",
	detailed = [[
		Inifile is a simple, complete ini parser for lua that intends to preserve
		as much information as possible, like the order of the file and the stored
		comments. It is also out-of-the-box compatible with LÖVE.
	]],
	homepage = "https://github.com/bartbes/inifile",
	license = "Simplified BSD license",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		inifile = "inifile.lua"
	}
}

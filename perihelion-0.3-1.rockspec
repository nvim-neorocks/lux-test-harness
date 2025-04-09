package = "perihelion"

version = "0.3-1"

description = {
	summary = "Perihelion Web Framework",
	detailed = [[
		Perihelion is a lightweight web framework, similar to Orbit, but
		with a very different approach to modularity.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/perihelion"
}

source = {
	url = "https://zadzmo.org/code/perihelion/downloads/perihelion-0.3.tar.gz"
}

dependencies = {
	"lua >= 5.1", "lua <= 5.4"
}

build = {
	type = "builtin",
	modules = {
		["perihelion"] = "perihelion.lua"
	}
}

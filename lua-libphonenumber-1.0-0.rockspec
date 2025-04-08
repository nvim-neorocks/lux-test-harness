package = "lua-libphonenumber"
version = "1.0-0"

source = {
	url = "git+https://github.com/omega-three/lua-libphonenumber"
}

description = {
	summary = "Lua bindings to the C/C++ Google libphonenumber library.",
	detailed = [[
	Library for parsing, formatting, and validating international phone numbers.

	Make sure you have installed dependencies according to your OS and lua version:
	
	sudo apt install -y build-essential pkgconf liblua5.1-0-dev libicu-dev libphonenumber8 libphonenumber-dev
	]],
	homepage = "https://github.com/omega-three/lua-libphonenumber",
	license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
	type = "make"
}
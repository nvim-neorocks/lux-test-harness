package = 'lua-marionette'
version = '0.1.1-1'
source = {
	url = 'https://codeberg.org/leso-kn/lua-marionette/archive/v0.1.1.zip',
	dir = 'lua-marionette'
}
description = {
	summary = 'A client for the marionette protocol to automate the Mozilla Firefox browser in Lua',
	homepage = 'https://codeberg.org/leso-kn/lua-marionette',
	license = 'MIT'
}
dependencies = {
	'lua-cjson ~> 2',
	'luachild ~> 0.1',
	'luasocket ~> 3'
}
build = {
	type = 'builtin',
	modules = {
		['marionette.init'] = 'marionette/init.lua',
		['marionette.native'] = 'marionette/native.c'
	}
}

package = 'paged-markdown-3'
version = '0.1.0-1'
source = {
	url = 'https://codeberg.org/leso-kn/lua-paged-markdown-3/archive/v0.1.0.zip',
	dir = 'lua-paged-markdown-3'
}
description = {
	summary = 'A library to render Paged Markdown 3 documents in Lua',
	homepage = 'https://codeberg.org/leso-kn/lua-paged-markdown-3',
	license = 'MIT'
}
dependencies = {
	'lua-discount2 ~> 2',
	'syntaxhighlight ~> 1',
	'xmlpeg ~> 0.3'
}
build = {
	type = 'builtin',
	modules = {
		pmd3 = 'pmd3/init.lua'
	}
}

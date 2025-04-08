package = 'paged-markdown-3-pdf'
version = '0.1.0-1'
source = {
	url = 'https://codeberg.org/leso-kn/lua-paged-markdown-3/archive/v0.1.0.zip',
	dir = 'lua-paged-markdown-3'
}
description = {
	summary = 'A command-line PDF renderer for the Paged Markdown 3 document-format for scientific writing',
	homepage = 'https://codeberg.org/leso-kn/lua-paged-markdown-3',
	license = 'MIT'
}
dependencies = {
	'argparse ~> 0.7',
	'lua-cjson ~> 2',
	'lua-marionette ~> 0.1',
	'lua-yaml ~> 1',
	'paged-markdown-3 ~> 0.1',
	'sfs ~> 0.1'
}
build = {
	type = 'lrocket',
	entrypoint = 'cmd/pmd-pdf.lua',
	exclude = {
		'lpeg'
	},
	output = 'bin/pmd-pdf'
}

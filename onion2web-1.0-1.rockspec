package = "onion2web"
version = "1.0-1"
source = {
    url = 'git://github.com/starius/onion2web',
    tag = 'master',
}
description = {
    summary = "Access .onion sites without Tor Browser",
    homepage = "https://github.com/starius/onion2web",
    maintainer = "Boris Nagaev <bnagaev@gmail.com>",
    license = "MIT"
}
dependencies = {
    "lua ~> 5.1",
    "socks5 >= 1.5"
}
build = {
    type = "builtin",
    modules = {
        onion2web = "onion2web.lua",
    },
}


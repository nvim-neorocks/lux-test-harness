package = "netstring"
version = "1.0.6-0"
source = {
    url = "https://github.com/jprjr/netstring.lua/archive/1.0.6.tar.gz",
    file = "netstring.lua-1.0.6.tar.gz",
}
description = {
    summary = "Implementation of DJB's netstring for lua",
    homepage = "https://github.com/jprjr/netstring.lua",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        netstring = "src/netstring.lua"
    }
}
dependencies = {
    "lua >= 5.1"
}

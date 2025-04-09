-- -*- lua -*-

package = "jeejah"
version = "0.3.0-2"
source = {
   url = "git+https://gitlab.com/technomancy/jeejah.git",
   tag = "0.3.0",
}
description = {
   summary = "An nREPL server",
   detailed = [[
        Implements a server that speaks the nREPL protocol and allows
        clients to connect and evaluate code over a network connection.
    ]],
   homepage = "https://gitlab.com/technomancy/jeejah",
   license = "MIT/X11",
}
dependencies = {
   "lua >= 5.1",
   "luasocket = 3.0rc1-2",
   "serpent = 0.28-1",
   "bencode = 2.2.0-1",
}
build = {
   type = "builtin",
   modules = { jeejah = "jeejah.lua", },
   install = { bin = { "bin/jeejah" } },
}

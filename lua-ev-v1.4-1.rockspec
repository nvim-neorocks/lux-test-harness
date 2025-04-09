package = "lua-ev"
version = "v1.4-1"

source = {
   url = "git://github.com/brimworks/lua-ev",
   tag = "v1.4",
}

description = {
   summary = "Lua integration with libev",
   detailed = [[
      lua-ev: Lua integration with libev (http://dist.schmorp.de/libev)
   ]],
   homepage = "http://github.com/brimworks/lua-ev",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   LIBEV = {
      header = "ev.h",
      library = "libev.so"
   }
}

build = {
   type = "builtin",
   modules = {
      ev = {
         sources = {
            "lua_ev.c"
         },
         libraries = {
            "ev"
         }
      }
   }
}

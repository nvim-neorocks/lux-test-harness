package = "lua-hiredis-with-5.2-fix"
version = "0.2.2-1"
source = {
   url = "git://github.com/nicoster/lua-hiredis.git",
   branch = "v0.2.2"
}
description = {
   summary = "Bindings for hiredis Redis-client library. with a fix of lua5.2 support",
   homepage = "http://github.com/agladysh/lua-hiredis",
   license = "MIT/X11",
   maintainer = "Alexander Gladysh <agladysh@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      hiredis = {
         sources = {
            "src/lua-hiredis.c",

            -- bundled hiredis code --
            "lib/hiredis/net.c",
            "lib/hiredis/async.c",
            "lib/hiredis/dict.c",
            "lib/hiredis/hiredis.c",
            "lib/hiredis/sds.c"
         },
         incdirs = {
            "src/",

            -- bundled hiredis code --
            "lib/",
            "lib/hiredis/"
         }
      }
   }
}

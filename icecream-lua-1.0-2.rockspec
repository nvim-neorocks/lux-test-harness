package = "icecream-lua"
version = "1.0-2"
source = {
   url = "git://github.com/wlingze/iccream-lua.git"
}
description = {
   summary = "Never use print() to debug again. (lua)",
   homepage = "https://github.com/wlingze/icecream-lua",
   license = "unlicense"
}
build = {
   type = "builtin",
   modules = {
      icecream = "src/icecream.lua"
   }
}

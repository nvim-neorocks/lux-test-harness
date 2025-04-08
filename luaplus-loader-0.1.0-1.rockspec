package = "luaplus-loader"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/lua-plus/loader.git"
}
description = {
   -- homepage = "*** please enter a project homepage ***",
   license = "GNU GPLv3"
}
build = {
   type = "make",
   install_variables = {
      INST_LUADIR="$(LUADIR)",
   }
}

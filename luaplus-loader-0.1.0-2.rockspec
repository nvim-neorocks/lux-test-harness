package = "luaplus-loader"
version = "0.1.0-2"
source = {
   url = "git+https://github.com/lua-plus/loader.git"
}
description = {
   summary = "A drop-in replacement for require() and an extensible searcher",
   detailed = [[
      The Lua Plus loader aims to improve the behavior of lua's module loading
      facilities for large and small projects alike. It features an improved, 
      but vanilla-compatible implementation of `require()`, and facilities for
      writing package searchers. 

      requires https://www.npmjs.com/package/luabundler to build
   ]],
   -- homepage = "*** please enter a project homepage ***",
   license = "GNU GPLv3"
}
build = {
   type = "make",
   install_variables = {
      INST_LUADIR="$(LUADIR)",
   }
}

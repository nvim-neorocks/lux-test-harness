package = "LuaCC"
version = "0.9-0"
source = {
   url = "git://github.com/mihacooper/luacc",
}
description = {
   summary = "Command line tool to combine Lua source files.",
   detailed = [[
      LuaCC is a command line tool that allows you combine multiple Lua files into single one without any changes of your source code.
   ]],
   homepage = "http://github.com/mihacooper/luacc",
   license = "GPLv2"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luacc = "luacc/bin/luacc.lua",
   },
}

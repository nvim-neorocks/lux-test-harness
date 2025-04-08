package = "LuaText"
version = "0.1.2-0"
source = {
  url = "git://github.com/f4z3r/luatext.git",
   tag = "v0.1.1",
}
description = {
  summary = "A small library to print colored text",
  detailed = [[
      A libary providing an abstaction over ANSI escape codes
      that allow to print text to terminals in different colors
      and with various modifiers.
   ]],
  homepage = "https://github.com/f4z3r/luatext/tree/main",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "compat53 >= 0.12",
}
build = {
  type = "builtin",
  modules = {
    luatext = "./luatext.lua",
  },
}

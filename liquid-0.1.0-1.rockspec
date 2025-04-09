rockspec_format = "1.1"
package = "liquid"
version = "0.1.0-1"
source = {
   url = "git://github.com/3scale/liquid-lua.git",
   branch = "v0.1.0",
   url = "https://github.com/3scale/liquid-lua/archive/v0.1.0.tar.gz",
   md5 = "b86cd4d0d8eae8ac846a888e23550d45",
   dir = "liquid-lua-0.1.0",
}
description = {
   summary = "A lua implementation of liquid for OpenResty platform.",
   detailed = "Since liquid markup language has no its official language specification document , liquid-lua adopts a classic lexer/parser/interpreter implementation approch and comes up with a strict error mode.",
   homepage = "https://github.com/chenxianyu2015/liquid-lua",
   license = "BSD-2-Clause"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["liquid"] = "lib/liquid.lua"
   }
}

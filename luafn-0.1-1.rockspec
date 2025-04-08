package = "luafn"
version = "0.1-1"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/luafn"
}
description = {
   summary = "Functional programming fundamentals.",
   detailed = "A pure Lua module with no external dependency that provides functional programming fundamentals such as map, filter, reduce and pipe. All core functions work with iterators and as such are lazily evaluated.",
   homepage = "https://git.sr.ht/~mna/luafn",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",
}
build = {
   type = "builtin",
   modules = {
      fn = "fn.lua"
   }
}

package = "objc.lua"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/lukaskollmer/objc.lua.git"
}
description = {
   summary = "Lua ⇆ Objective-C bridge (experimental)",
   homepage = "https://github.com/lukaskollmer/objc.lua",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
external_dependencies = {
   LIBOBJC = {
      library = "libobjc"
   }
}
build = {
   type = "builtin",
   modules = {
      objc = "objc/init.lua",
      ["objc.ffi-defs"] = "objc/ffi-defs.lua",
      ["objc.utils"] = "objc/utils.lua"
   }
}

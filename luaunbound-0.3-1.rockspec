package = "luaunbound"
version = "0.3-1"
source = {
   url = "hg+http://code.zash.se/luaunbound/",
   tag = "0.3"
}
description = {
   summary = "A binding to libunbound",
   homepage = "https://www.zash.se/luaunbound.html",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   libunbound = {
      header = "unbound.h",
      library = "unbound"
   }
}
build = {
   type = "builtin",
   modules = {
      lunbound = {
         libraries = {
            "unbound"
         },
         sources = {
            "lunbound.c"
         }
      }
   }
}

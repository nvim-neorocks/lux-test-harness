package = "claims-handler"
version = "4.1.0-2"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/claims-handler.git",
   tag = "v4.1.0-2"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1",
   "lua-resty-http ~> 0.08",
   "lua-resty-jwt ~> 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.claims-handler.access"] = "access.lua",
      ["kong.plugins.claims-handler.handler"] = "handler.lua",
      ["kong.plugins.claims-handler.schema"] = "schema.lua"
   }
}

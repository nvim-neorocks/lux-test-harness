package = "wtf-honeybot-core"
version = "0.4-1"
source = {
   url = "git+https://github.com/honeybot/wtf-honeybot-core",
   tag = "0.4"
}
description = {
   homepage = "https://github.com/honeybot/wtf-honeybot-core",
   license = "MIT"
}
dependencies = {
   "wtf >= 0.2",
   "lua-cjson >= 2.1",
   "lua-resty-reqargs >= 1.4",
   "lua-resty-upload >= 0.09",
   "lua-resty-nettle >= 0.105"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot"] = "wtf/plugins/honeybot.lua",
      ["wtf.solvers.honeybot"] = "wtf/solvers/honeybot.lua"
   }
}

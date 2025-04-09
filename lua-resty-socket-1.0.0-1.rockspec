package = "lua-resty-socket"
version = "1.0.0-1"
source = {
  url = "git://github.com/thibaultCha/lua-resty-socket",
  tag = "1.0.0"
}
description = {
  summary = "Graceful fallback to LuaSocket for ngx_lua",
  homepage = "http://thibaultcha.github.io/lua-resty-socket",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["resty.socket"] = "lib/resty/socket.lua"
  }
}

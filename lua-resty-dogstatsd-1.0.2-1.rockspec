package = "lua-resty-dogstatsd"
version = "1.0.2-1"
source = {
  url = "git://github.com/landakram/lua-resty-dogstatsd.git",
  tag = "v1.0.2"
}
description = {
  summary = "DogStatsd client for OpenResty/ngx_lua",
  detailed = "DogStatsd client for Lua 5.1+.",
  homepage = "https://github.com/landakram/lua-resty-dogstatsd",
  license = "GPLv3"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-statsd >= 3.0.2",
}
build = {
  type = "builtin",
  modules = {
    resty_dogstatsd = "resty_dogstatsd.lua"
  }
}

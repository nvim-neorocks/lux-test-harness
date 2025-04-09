package = "statsd"
version = "3.0.2-1"
source = {
  url = "git://github.com/stvp/lua-statsd-client.git",
  tag = "v3.0.2"
}
description = {
  summary = "Statsd client.",
  detailed = "Statsd client for Lua 5.1+. Uses the luasocket library for UDP.",
  homepage = "https://github.com/stvp/lua-statsd-client",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1",
  "luasocket >= 2.0.2"
}
build = {
  type = "builtin",
  modules = {
    statsd = "src/statsd.lua"
  }
}


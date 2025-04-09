package = "kRPC"
version = "0.1.11-0"
source = {
  url = "https://github.com/djungelorm/krpc/releases/download/lua-client-v0.1.11/krpc-0.1.11-0.tar.gz"
}
description = {
  summary = "Lua client library for kRPC, a Remote Procedure Call server for Kerbal Space Program",
  homepage = "https://github.com/djungelorm/krpc/wiki",
  license = "GNU GPL v3"
}
dependencies = {
  "lua ~> 5.2",
  "penlight"
}
build = {
  type = "builtin",
  modules = {
  }
}

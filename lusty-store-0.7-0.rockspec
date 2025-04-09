package = "lusty-store"
version = "0.7-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-store/archive/v0.7.tar.gz",
  dir = "lusty-store-0.7"
}
description = {
  summary = "Persistence interface for lusty.",
  detailed = [[
    Persistence interface for lusty.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty >= 0.2-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-store.query"] = "lusty-store/query.lua",
    ["lusty-store.context.store"]  = "lusty-store/context/store.lua"
  }
}

package = "lusty-store-mongo"
version = "0.2-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-store-mongo/archive/v0.2.tar.gz",
  dir = "lusty-store-mongo-0.2"
}
description = {
  summary = "Mongo plugin for lusty persistence interface.",
  detailed = [[
    Mongo plugin for lusty persistence interface.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty-log >= 0.2-0",
  "lusty-store >= 0.2-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-store-mongo.store.mongo.connection"]  = "src/store/mongo/connection.lua",
    ["lusty-store-mongo.store.mongo.head"]  = "src/store/mongo/head.lua",
    ["lusty-store-mongo.store.mongo.delete"]  = "src/store/mongo/delete.lua",
    ["lusty-store-mongo.store.mongo.patch"]  = "src/store/mongo/patch.lua",
    ["lusty-store-mongo.store.mongo.post"]  = "src/store/mongo/post.lua",
    ["lusty-store-mongo.store.mongo.put"]  = "src/store/mongo/put.lua",
    ["lusty-store-mongo.store.mongo.get"]  = "src/store/mongo/get.lua",
    ["lusty-store-mongo.store.mongo"]  = "src/store/mongo.lua"
  }
}

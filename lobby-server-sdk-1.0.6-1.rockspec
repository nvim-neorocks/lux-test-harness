package = "lobby-server-sdk"
version = "1.0.6-1"
source = {
   url = "https://github.com/GrapeAppleFruit/the-night-shift-sdk/archive/v1.0.6.zip",
   dir = "the-night-shift-sdk-1.0.6"
}
description = {
   summary = "The lobby server SDK for Gas Station: The Night Shift",
   detailed = [[
      A comprehensive SDK for managing multiplayer game lobbies in Lua.
      Features include lobby creation, joining, player management, and real-time updates.
   ]],
   homepage = "https://github.com/GrapeAppleFruit/the-night-shift-sdk",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0",
   "lua-cjson >= 2.1"
}
build = {
   type = "builtin",
   modules = {
      ["lobby_server_sdk"] = "lobby_server_sdk/init.lua",
      ["lobby_server_sdk.utils"] = "lobby_server_sdk/utils.lua"
   }
}
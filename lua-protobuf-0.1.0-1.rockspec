package = "lua-protobuf"
version = "0.1.0-1"

source = {
  url = "https://github.com/starwing/lua-protobuf/archive/0.1.0.tar.gz"
}

description = {
  summary = "protobuf data support for Lua",
  detailed = [[
This project offers a simple C library for basic protobuf wire format encode/decode.
  ]],
  homepage = "https://github.com/starwing/lua-protobuf",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["pb"]= "pb.c",
    [".pb"]= "pb.lua", -- hack to make a same name lua module.
    [".pb_typeinfo"]= "pb_typeinfo.lua", -- hack to make a same name lua module.
  }
}

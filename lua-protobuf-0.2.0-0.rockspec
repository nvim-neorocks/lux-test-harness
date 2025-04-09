package = "lua-protobuf"
version = "0.2.0-0"

source = {
  url = "https://github.com/starwing/lua-protobuf/archive/0.2.0.zip",
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
    pb     = "pb.c";
    protoc = "protoc.lua";
  }
}

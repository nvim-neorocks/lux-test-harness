package = "protobuf"
version = "1.1.1-0"
source = {
    url = "git://github.com/djungelorm/protobuf-lua",
    tag = "v1.1.1",
}
description = {
  summary = "protobuf library and compiler plugin",
  homepage = "https://github.com/djungelorm/protobuf-lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3"
}
build = {
  type = "builtin",
  modules = {
    protobuf = "protobuf/init.lua",
    ["protobuf.containers"] = "protobuf/containers.lua",
    ["protobuf.encoder"] = "protobuf/encoder.lua",
    ["protobuf.decoder"] = "protobuf/decoder.lua",
    ["protobuf.descriptor"] = "protobuf/descriptor.lua",
    ["protobuf.text_format"] = "protobuf/text_format.lua",
    ["protobuf.wire_format"] = "protobuf/wire_format.lua",
    ["protobuf.listener"] = "protobuf/listener.lua",
    ["protobuf.type_checkers"] = "protobuf/type_checkers.lua",
    ["protobuf.pb"] = { sources = {"protobuf/pb.c"} }
  },
  copy_directories = {"protoc-plugin"}
}

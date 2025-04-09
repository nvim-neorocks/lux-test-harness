package = "gomaxmagick"
version = "0.1.3-1"

source = {
  url = "git://github.com/gomax/magick.git",
}

description = {
  summary = "Lua bindings to ImageMagick for LuaJIT using FFI",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua == 5.1", -- how to do luajit?
}

build = {
  type = "builtin",
  modules = {
    ["magick"] = "magick/init.lua",
  }
}

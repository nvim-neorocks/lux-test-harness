package = "mjolnir.tiling"
version = "0.3.1-1"
source = {
   url = "git://github.com/nathankot/mjolnir.tiling",
   tag = "v0.3.1",
   dir = "mjolnir.tiling"
}
description = {
   summary = "Tiling window management for mjolnir",
   detailed = [[
    Tiling window management for mjolnir. Inspired by tmux's window management
    and built-in layouts. Supports multiple spaces and displays.
  ]],
   homepage = "https://github.com/nathankot/mjolnir.tiling",
   license = "MIT"
}
supported_platforms = {
   "macosx"
}
dependencies = {
   "lua >= 5.2", "mjolnir.alert", "mjolnir.application"
}
build = {
   type = "builtin",
   modules = {
      ['mjolnir.tiling'] = "tiling.lua",
      ['mjolnir.tiling.layouts'] = "layouts.lua"
   }
}

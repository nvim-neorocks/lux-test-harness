package = "dogmac"
version = "1.0.alpha5-1"
source = {
  url = "git+https://bitbucket.org/dogmalang/dogmac.git"
}
description = {
  summary = "Compiler for the Dogma language (dogmalang.com).",
  detailed = [[
    Compiler for the Dogma language (dogmalang.com).
  ]],
  homepage = "http://dogmalang.com",
  license = "",
  maintainer = "Justo Labs <hello@justolabs.com>"
}
dependencies = {
  "lua >= 5.3",
  "dogma-core >= 1.0.alpha5",
  "lua_cliargs >= 3.0",
  "penlight >= 1.5"
}
build = {
  type = "builtin",
  modules = {
    ["dogmac.js"] = "src/js.lua",
    ["dogmac.linter"] = "src/linter.lua"
  },
  install = {
    bin = {
      dogmac = "bin/dogmac.lua"
    }
  }
}

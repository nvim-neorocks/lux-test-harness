package = "Moonpick"
version = "0.1-1"

source = {
  url = "git://github.com/nilnor/moonpick.git",
  tag = 'v0.1'
}

description = {
  summary = "An alternative moonscript linter.",
  detailed = [[
      Moonpick is an alternative linter for Moonscript,
      capable of detecting more potential issues with
      your Moonscript code compared to the built-in linter.
   ]],
  homepage = "https://github.com/nilnor/moonpick",
  license = "MIT",
  maintainer = "Nils Nordman <nino at nordman.org>"
}

dependencies = {
  "lua >= 5.1",
  "moonscript ~> 0.4",
}

build = {
  type = 'builtin',
  modules = {
    moonpick = "src/moonpick.lua",
  },
  install = {
    bin = { "bin/moonpick", "bin/moonpick" }
  }
}

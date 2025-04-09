package = "lusty-html"
version = "0.2-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-html/archive/v0.2.tar.gz",
  dir = "lusty-html-0.2"
}
description = {
  summary = "html input and output for lusty.",
  detailed = [[
    Input and output extensions for lusty
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty >= 0.1-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-html.output.html"]  = "src/output/html.lua"
  }
}

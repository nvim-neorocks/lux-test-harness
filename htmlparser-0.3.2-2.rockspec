package = "htmlparser"
version = "0.3.2-2"
source = {
  url = "https://github.com/msva/lua-htmlparser",
  branch = "v0.3.2"
}
description = {
  summary = "Parse HTML text into a tree of elements with selectors",
  detailed = [[
    Call parse() to build up a tree of element nodes. Each node in the tree, including the root node that is returned by parse(), supports a basic set of jQuery-like selectors. Or you could walk the tree by hand.
  ]],
  homepage = "http://msva.github.io/lua-htmlparser/",
  license = "LGPL+"
}
dependencies = {
  "lua >= 5.1",
  "set >= 0.2.1-2",
  "lunitx >= 0.6"
}
build = {
  type = "builtin",
  copy_directories = {"doc", "tst"},
  modules = {
    htmlparser = "src/htmlparser.lua",
    ["htmlparser.ElementNode"] = "src/htmlparser/ElementNode.lua",
    ["htmlparser.voidelements"] = "src/htmlparser/voidelements.lua"
  }
}

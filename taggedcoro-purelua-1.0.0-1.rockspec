package = "TaggedCoro-purelua"
version = "1.0.0-1"
source = {
  url = "git://github.com/mascarenhas/taggedcoro.git",
  tag = "v1.0.0"
}
description = {
    summary = "Tagged Coroutines",
    detailed = [[
       Enriches coroutines to have an associated tag
       (which can be any Lua value). A call to
       coroutine.yield transfers control to the nearest
       enclosing coroutine.resume with the same tag.
       Resuming that coroutine transfers control back
       to the call to coroutine.yield.
    ]],
    homepage = "https://github.com/mascarenhas/taggedcoro",
    license = "MIT/X11"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
     taggedcoro = "src/taggedcoro.lua",
     ["taggedcoro.iterator"] = "contrib/iterator.lua",
     ["taggedcoro.stm"] = "contrib/stm.lua",
     ["taggedcoro.exception"] = "contrib/exception.lua",
     ["taggedcoro.nlr"] = "contrib/nlr.lua",
   },
   copy_directories = { "samples", "test" }
}

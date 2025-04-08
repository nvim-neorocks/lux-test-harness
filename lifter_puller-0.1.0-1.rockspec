package = "lifter_puller"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com/Freemasen/lifter_puller",
   tag = "v0.1.0"
}
description = {
   summary = "An xml pull parser in pure lua",
   detailed = "An xml pull parser in pure lua",
   homepage = "https://github.com/FreeMasen/lifter_puller",
   license = "MIT",
   labels = { "xml", "parsing" }
}
build = {
   type = "builtin",
   modules = {
      lifter_puller = "lifter_puller/init.lua",
      ["lifter_puller.buffer"] = "lifter_puller/buffer.lua",
      ["lifter_puller.event"] = "lifter_puller/event.lua",
      ["lifter_puller.puller"] = "lifter_puller/puller.lua"
   }
}
rockspec_format = "3.0"